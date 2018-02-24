import pandas as pd
from pandas import ExcelFile

def read_UserNames(filename):
    UserSheet = pd.read_excel(filename,sheet_name='Sheet1')
    Usernames = UserSheet['Username']
    return Usernames

def read_Passwords(filename):
    UserSheet = pd.read_excel(filename,sheet_name='Sheet1')
    Passwords = UserSheet['Password']
    return Passwords

def read_AppName(filename):
    UserSheet = pd.read_excel(filename,sheet_name='Sheet2')
    AppName = UserSheet['Apps']
    return AppName

def read_Objects(filename):
    UserSheet = pd.read_excel(filename,sheet_name='Sheet2')
    ObjectsName = UserSheet['Objects']
    return ObjectsName

def read_Fields(filename):
    UserSheet = pd.read_excel(filename,sheet_name='Sheet2')
    FieldsName = UserSheet['Fields']
    ListFieldsName = FieldsName[0].split(",")
    return ListFieldsName

