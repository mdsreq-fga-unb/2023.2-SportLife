import 'dart:collection';

import 'package:calendario/models/event_model.dart';
import 'package:calendario/utils/faker_api.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:async';

bool load = false;
List<AppEvent> events = [];

var kNow = DateTime.now();
var kFirstDay = DateTime(kNow.year, kNow.month - 3, kNow.day);
var kLastDay = DateTime(kNow.year, kNow.month + 3, kNow.day);

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen>
    with TickerProviderStateMixin {
  _CalendarScreenState();

  LinkedHashMap<DateTime, List<AppEvent>>? _groupedEvents;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();
  CalendarFormat format = CalendarFormat.twoWeeks;

  @override
  void initState() {
    super.initState();
    addSchedules();
  }

  //Função auxiliar para o LinkedHashMap
  int getHashCode(DateTime key) {
    return key.day * 1000000 + key.month * 10000 + key.year;
  }

  //Adiciona os eventos em Map (LinkedHashMap)
  _groupEvents(List<AppEvent> events) {
    _groupedEvents = LinkedHashMap(equals: isSameDay, hashCode: getHashCode);
    for (var event in events) {
      DateTime date = DateTime.utc(
          event.date!.year, event.date!.month, event.date!.day, 12);
      if (_groupedEvents![date] == null) _groupedEvents![date] = [];
      _groupedEvents![date]!.add(event);
    }
  }

  //Obtém os eventos de dia determinado
  List<dynamic> _getEventsForDay(DateTime date) {
    return _groupedEvents![date] ?? [];
  }

  ///Função para adcionar os horários ao calendário.
  Future addSchedules() async {
    await FakerApi.getData().then((schedules) {
      events.clear();
      for (var i = 0; i < schedules.length; i++) {
        events.add(AppEvent(
            date: DateTime.parse(schedules[i].birthday),
            title: schedules[i].firstname));
      }
      setState(() {
        load = true;
      });
    });
    _groupEvents(events);
  }

  @override
  Widget build(BuildContext context) {
    if (load == false) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.blueGrey,
        ),
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          TableCalendar(
            locale: 'pt_BR', //Traduzindo os meses
            focusedDay: _focusedDay,
            firstDay: kFirstDay,
            lastDay: kLastDay,
            calendarFormat: format,
            startingDayOfWeek: StartingDayOfWeek
                .monday, //Indica que o primeiro dia do calendário é segunda
            pageJumpingEnabled:
                true, //permite clicar em um dia fora do mês, que ele irá direcionar para o outro mês

            //informa os eventos
            eventLoader: _getEventsForDay,

            //Seleciono um novo dia
            onDaySelected: (newSelectedDay, newFocusedDay) {
              setState(() {
                //aq posso unir as duas
                _selectedDay = newSelectedDay;
                _focusedDay = newFocusedDay;
              });
            },

            //Altera o formato do calendário mensal, semanal, duas semanas
            onFormatChanged: (CalendarFormat _format) {
              setState(() {
                format = _format;
              });
            },

            //FALTA
            //Função que permite se determinado dia deve ser marcado como selecionado.
            selectedDayPredicate: (day) => isSameDay(day, _selectedDay),

            //TERMINA

            //Alterando nomes padrão de month, week e twoWeeks
            availableCalendarFormats: const {
              CalendarFormat.month: 'mês',
              CalendarFormat.week: 'semana',
              CalendarFormat.twoWeeks: '2 semanas'
            },

            //Brincando com os estilos do table calendar
            headerStyle: HeaderStyle(
              //Ajusta setinhas
              leftChevronIcon: const Icon(
                Icons.chevron_left_outlined,
                size: 24,
                color: Colors.black54,
              ),
              leftChevronPadding: EdgeInsets.zero,
              rightChevronIcon: const Icon(
                Icons.chevron_right_outlined,
                size: 24,
                color: Colors.black54,
              ),
              rightChevronMargin: EdgeInsets.zero,
              //Elimina o padding do header
              headerPadding: EdgeInsets.zero,
              //caso queira remover o botão de trocar os estilos de calendário
              formatButtonVisible: true,
              //indica se o botão de trocar os estilos mostra o tipo selecionado ou mostra o tipo que irá ser alterado ao clicar no botão
              formatButtonShowsNext: false,
              //personalizar os botões para trocar os estilos
              formatButtonDecoration: BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15)),
              //personalizar o texto dos botões para trocar os estilos
              formatButtonTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 12),
              // altera a fonte do nome do mês e centraliza
              titleTextStyle: const TextStyle(color: Colors.blueGrey),
              titleCentered: true,
            ),

            //Aplicando estilo no calendário
            calendarStyle: CalendarStyle(
              outsideDaysVisible:
                  false, //Oculta os dias posteriores ao último dia do mês.
              //Cor do dia selecionado
              selectedDecoration: const BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.rectangle,
              ),
              //Style do texto selecionado
              selectedTextStyle:
                  const TextStyle(color: Color.fromRGBO(238, 230, 226, 1)),
              //Cor do dia de hoje
              todayDecoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.rectangle,
              ),
              //Texto do dia de hoje
              todayTextStyle: const TextStyle(color: Colors.blueGrey),

              //Cor da box dos dias de semana
              defaultDecoration: const BoxDecoration(
                  color: Colors.transparent, shape: BoxShape.rectangle),
              //texto dos dias de semana
              defaultTextStyle: const TextStyle(color: Colors.blueGrey),
              //Cor da box dos fins de semana
              weekendDecoration: const BoxDecoration(
                  color: Colors.transparent, shape: BoxShape.rectangle),
              //texto dos dias de semana
              weekendTextStyle: const TextStyle(color: Colors.blueGrey),
            ),

            calendarBuilders: CalendarBuilders(
              //Trazindo a cor dos nomes do dia no header
              dowBuilder: (context, day) {
                String text;
                if (day.weekday == DateTime.sunday) {
                  text = 'dom';
                } else if (day.weekday == DateTime.monday) {
                  text = 'seg';
                } else if (day.weekday == DateTime.tuesday) {
                  text = 'ter';
                } else if (day.weekday == DateTime.wednesday) {
                  text = 'qua';
                } else if (day.weekday == DateTime.thursday) {
                  text = 'qui';
                } else if (day.weekday == DateTime.friday) {
                  text = 'sex';
                } else if (day.weekday == DateTime.saturday) {
                  text = 'sab';
                } else {
                  text = 'err';
                }
                return Center(
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.blueGrey),
                  ),
                );
              },

              //Cor dos marcadores para os eventos..
              markerBuilder: (context, day, events) {
                if (events.isNotEmpty) {
                  return Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Positioned(
                        bottom: 2.0,
                        child: Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Positioned(
                    bottom: 2.0,
                    child: Container(
                      height: 10.0,
                      width: 10.0,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 30 / 9,
              children: [
                ..._getEventsForDay(_selectedDay).map((event) => Card(
                    color: Colors.blueGrey,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: ListTile(
                      title: Text(
                        event.title.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )))
              ],
            ),
          ),
        ],
      );
    }
  }
}
