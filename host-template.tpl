{{- if .Alerts -}}
	{{- range $severity, $alerts := (groupAlertsByLabel .Alerts "severity") -}}
		{{- range $index, $alert := $alerts }}
			{{ $alert.Labels.instance }}
		{{ end }}
	{{ end }}
{{ else -}}
	{{- range $severity, $alerts := (groupAlertsByLabel .Alerts "severity") -}}
		{{- range $index, $alert := $alerts }}
			{{ $alert.Labels.instance }}
		{{ end }}
	{{ end }}
{{- end -}}
