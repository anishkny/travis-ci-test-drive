#!/bin/bash -x

functions start
functions deploy helloWorld --trigger-http
functions call helloWorld
functions stop