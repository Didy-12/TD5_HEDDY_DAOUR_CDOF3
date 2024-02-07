#!/bin/bash
docker build -t td4_app -f Dockerfile.app .
docker build -t db -f Dockerfile.db .
