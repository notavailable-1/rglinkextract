# Geben Sie die URL der Seite an, von der Sie die Rapidgator-Links extrahieren möchten
$url = "https://example.com"  # Ersetze dies mit der URL der gewünschten Seite

# Herunterladen des HTML-Inhalts der Seite
$response = Invoke-WebRequest -Uri $url

# Extrahieren aller Links, die Rapidgator enthalten
$links = $response.Links | Where-Object { $_.href -like "*rapidgator*" }

# Speichern der gefundenen Links in einer Textdatei
$links | ForEach-Object { $_.href } > "rapidgator_links.txt"

Write-Host "Rapidgator-Links wurden in der Datei 'rapidgator_links.txt' gespeichert."
