﻿<cfset regname = REMatch("^[-a-zA-Z0-9._:,]+$", url.habbo_name)><cfset iniFile = expandPath("../config.ini")><cfset DSN = getProfileString(iniFile, "coldfusion", "DSN")><cfquery name = "NameCheck" datasource = "#DSN#">SELECT username FROM users WHERE username = '#url.habbo_name#' LIMIT 1</cfquery><cfif NameCheck.recordcount>0<cfelseif ArrayLen(regname)>1<cfelse>0</cfif>