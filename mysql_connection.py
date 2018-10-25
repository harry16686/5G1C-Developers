#!/usr/bin/python

# import pymysql
import MySQLdb
import sys
from account import Account
from car import Car
from customer import Customer
from store import Store


def get_connection():
    db = MySQLdb.connect("localhost", "root", "", "crc")
    return db


def find_all_account():
    accounts = []
    db = get_connection()
    cursor = db.cursor()
    sql = " SELECT * FROM account limit 10 "
    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            account = Account(row[0], row[1], row[2])
            print(row[0], row[1], row[2])
            accounts.append(account)
    except:
        print ("Error: unable to fetch data")

    db.close()

    return accounts


def find_account(username, pwd):
    account = None
    db = get_connection()
    cursor = db.cursor()
    sql = '''SELECT * FROM account where username = '{}' and pwd = '{}' '''.format(username, pwd)
    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            account = Account(row[0], row[1], row[2])
    except:
        print ("Error: unable to fetch data")

    db.close()

    return account


def find_cars(makename):
    cars = []
    db = get_connection()
    cursor = db.cursor()
    if makename:
        args = '%' + makename + '%'
        sql = ''' SELECT * FROM car where car_makename like '{}' '''.format(args)
        print(sql)
    else:
        sql = " SELECT * FROM car "

    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            car = Car()
            car.car_id = row[0]
            car.car_makename = row[1]
            car.car_model = row[2]
            car.car_series = row[3]
            car.car_series_year = row[4]
            car.car_price_new = row[5]
            car.car_engine_size = row[6]
            car.car_fuel_system = row[7]
            car.car_tank_capacity = row[8]
            car.car_power = row[9]
            car.car_seating_capacity = row[10]
            car.car_standard_transmission = row[11]
            car.car_body_type = row[12]
            car.car_drive = row[13]
            car.car_wheelbase = row[14]
            car.store_id = row[15]
            cars.append(car)
    except:
        info = sys.exc_info()
        print(info[0], ":", info[1])
        print ("Error: unable to fetch data")

    db.close()

    return cars


def find_customers(name):
    customers = []
    db = get_connection()
    cursor = db.cursor()
    if name:
        args = '%' + name + '%'
        sql = ''' SELECT * FROM customer where customer_name like '{}' '''.format(args)
        print(sql)
    else:
        sql = " SELECT * FROM customer "

    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            customer = Customer()
            customer.customer_id = row[0]
            customer.customer_name = row[1]
            customer.customer_phone = row[2]
            customer.customer_address = row[3]
            customer.customer_birthday = row[4]
            customer.customer_occupation = row[5]
            customer.customer_gender = row[6]
            customers.append(customer)
    except:
        info = sys.exc_info()
        print(info[0], ":", info[1])
        print ("Error: unable to fetch data")

    db.close()

    return customers


def find_stores(name):
    stores = []
    db = get_connection()
    cursor = db.cursor()
    if name:
        args = '%' + name + '%'
        sql = ''' SELECT * FROM store where store_name like '{}' '''.format(args)
        print(sql)
    else:
        sql = " SELECT * FROM store "

    try:
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            store = Store()
            store.store_id = row[0]
            store.store_name = row[1]
            store.store_address = row[2]
            store.store_phone = row[3]
            store.store_city = row[4]
            store.store_state = row[5]
            stores.append(store)
    except:
        info = sys.exc_info()
        print(info[0], ":", info[1])
        print ("Error: unable to fetch data")

    db.close()

    return stores
