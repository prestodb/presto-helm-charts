{{- define "presto.coordinatorAnnotations" -}}
{{- $mergedAnnotations := merge  .Values.coordinator.podAnnotations .Values.podAnnotations }}
{{- range $key, $value := $mergedAnnotations }}
{{ $key }}: {{ $value | quote }}
{{- end }}
{{- end }}

{{- define "presto.workerAnnotations" -}}
{{- $mergedAnnotations := merge .Values.worker.podAnnotations .Values.podAnnotations }}
{{- range $key, $value := $mergedAnnotations }}
{{ $key }}: {{ $value | quote }}
{{- end }}
{{- end }}

{{- define "presto.resourceManagerAnnotations" -}}
{{- $mergedAnnotations := merge .Values.resourceManager.podAnnotations .Values.podAnnotations }}
{{- range $key, $value := $mergedAnnotations }}
{{ $key }}: {{ $value | quote }}
{{- end }}
{{- end }}


