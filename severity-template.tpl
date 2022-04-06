{{- if .Alerts -}}
	{{- range $severity, $alerts := (groupAlertsByLabel .Alerts "severity") -}}
		{{- range $index, $alert := $alerts }}
  			{{ $alert.Labels.spectrum_severity }}
		{{ end }}
	{{ end }}
{{ else -}}
    {{- range $severity, $alerts := (groupAlertsByLabel .Alerts "severity") -}}
        {{- range $index, $alert := $alerts }}
            {{ $alert.Labels.spectrum_severity }}
        {{ end }}
    {{ end }}
{{- end -}}
