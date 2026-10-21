#!/bin/bash
EMAIL=$(grep -i "^$USER" /etc/passwd | grep -Po '<\K.*?(?=>)')
echo $EMAIL
