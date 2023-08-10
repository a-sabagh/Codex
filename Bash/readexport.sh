#!/bin/bash

echo "Please Enter Domain";
read domain;

echo "Please Enter  Log In Prefix@";
read prefix;

echo "Please Enter Password";
read password;

export username="${prefix}@${domain}";
export password=$password;

echo "curl ftp://${host}/ --user ${username}:${password}";
