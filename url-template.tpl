{{- if .Alerts -}}
	{{- range $severity, $alerts := (groupAlertsByLabel .Alerts "severity") -}}
		{{- range $index, $alert := $alerts }}
			{{ .GeneratorURL }} 
		{{ end }}
	{{ end }}
{{ else -}}
	{{- range $severity, $alerts := (groupAlertsByLabel .Alerts "severity") -}}
		{{- range $index, $alert := $alerts }}
			{{ .GeneratorURL }} 
		{{ end }}
	{{ end }}
{{- end -}}
