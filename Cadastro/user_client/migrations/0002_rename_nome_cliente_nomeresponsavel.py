# Generated by Django 4.2.7 on 2023-12-13 20:12

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('user_client', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cliente',
            old_name='nome',
            new_name='nomeResponsavel',
        ),
    ]
