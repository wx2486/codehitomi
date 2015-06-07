#! /usr/bin/python3
# -*- coding: utf-8 -*-

# codehitomi project
#
# wx2486, 2015/06/06
#
# Invoke codeforces api and return json object

import logging
import json
import urllib.request

def cfapi(datatype, paras):
    url = 'http://codeforces.com/api/'
    url += datatype
    for i in range(len(paras)):
        cat = '&' if i != 0 else '?'
        url += cat + paras[i][0] + '=' + paras[i][1]
    logging.debug('Downloading data from %s...', url)
    data = urllib.request.urlopen(url).read().decode()
    logging.debug('Loading json string stream...')
    data = json.loads(data)
    logging.debug('Done.')
    return data
