# Generated by Django 3.2.9 on 2021-11-24 18:58

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('taskapp', '0006_cart_reg_tb_status'),
    ]

    operations = [
        migrations.CreateModel(
            name='order_reg_tb',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('dressname', models.CharField(default='', max_length=100)),
                ('price', models.CharField(default='', max_length=100)),
                ('phono', models.CharField(default='', max_length=100)),
                ('location', models.CharField(default='', max_length=100)),
                ('status1', models.CharField(default='', max_length=100)),
                ('drsid', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='taskapp.dress')),
                ('userid', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='taskapp.reg_tb')),
            ],
        ),
    ]
