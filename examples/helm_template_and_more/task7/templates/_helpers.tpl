{{/*
Create a default fully qualified app name.
*/}}
{{- define "chartname.appQualifiedName" -}}
{{ .Values.appName | default .Release.Name | lower }}
{{- end }}

{{/*
Create a default app name
*/}}
{{- define "chartname.appName" -}}
{{ .Values.anything }}
{{- end }}