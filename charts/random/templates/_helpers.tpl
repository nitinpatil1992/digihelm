{{- define "chart.env.name" -}}
{{- if .Values.environment -}}
{{- printf "%s-%s" .Values.environment .Values.name -}}
{{- else -}}
{{- printf "%s" .Values.name -}}
{{- end -}}
{{- end -}}

{{- define "random.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}