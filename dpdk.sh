#! /bin/bash

# download source code


# set env


# compile
meson setup build
meson -Denable_kmods=true build
meson -Dtests=false build
meson compile build