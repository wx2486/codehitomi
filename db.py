#! /usr/bin/python3
# -*- coding: utf-8 -*-

# codehitomi project
#
# wx2486, 2015/06/07
#
# Database operations

import mysql.connector

class db:
    def __init__(self):
        self.connection = mysql.connector.connect(user='hitomi',
                                                  password='hitomi',
                                                  database='codehitomi')
                                                  
    def __del__(self):
        self.connection.close()
        
    def insert(self, datatype, data):
        cursor = self.connection.cursor()
        
        cursor.close()