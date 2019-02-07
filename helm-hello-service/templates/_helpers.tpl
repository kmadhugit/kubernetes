{{- define "servname" -}}
{{- printf "%s-%s" .Values.appname "serv" -}}
{{- end -}}
