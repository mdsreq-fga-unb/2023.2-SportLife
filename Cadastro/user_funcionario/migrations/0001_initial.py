# Generated by Django 4.2.7 on 2023-11-23 02:29

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='funcionario',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('telefone', models.CharField(max_length=13, unique=True)),
                ('cpf', models.CharField(max_length=11)),
                ('nome', models.CharField(max_length=40)),
                ('email', models.EmailField(max_length=40, unique=True)),
                ('senha', models.CharField(max_length=15, unique=True)),
            ],
            options={
                'abstract': False,
            },
        ),
    ]
