---
title: AWS Security
subtitle: Xebia Security
author: Yashin Mehaboobe
date: June 2022
theme: Boadilla
classoption: aspectratio=169
---

# Event driven response in Lambda

- Lambda can be used for Event-Driven Response
- Allows for automatic response to pre determined events
- For example, if MFA is disabled for an account, an Event-Driven Response would be:
	- Create an AWS Config check for MFA on the account
	- Connect this check with a lambda to turn it back on if it is turned off.
	- Now, if an attacker turns off MFA for an account, the lambda function would be triggered and would enable MFA again
