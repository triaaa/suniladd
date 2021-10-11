{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "minion-ms.chartName" -}}
{{- default .Chart.Name | trunc 59 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "minion-ms.resourceName" -}}
{{- $mode := .Values.application.mode }}
{{- if $mode}}
{{- printf "%s-%s-%s" .Release.Name $mode .Release.Namespace | trunc 59 | trimSuffix "-" -}}
{{- else }}
{{- printf "%s-%s" .Release.Name .Release.Namespace | trunc 59 | trimSuffix "-" -}}
{{- end }}
{{- end -}}