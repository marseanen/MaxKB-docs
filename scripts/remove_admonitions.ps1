$ErrorActionPreference = 'Stop'

# Корень репозитория = каталог на уровень выше скрипта
$root = Split-Path -Parent $PSScriptRoot

# Все Markdown-файлы
$files = Get-ChildItem -Path $root -Recurse -Filter *.md -File

foreach ($file in $files) {
    $content = Get-Content -LiteralPath $file.FullName -Raw -Encoding UTF8
    $lines = $content -split "`r?`n"
    $out = New-Object System.Collections.Generic.List[string]

    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = $lines[$i]

        if ($line -match '^\s*!!!\s*Abstract\s*""\s*$') {
            # Пропускаем саму строку admonition и снимаем отступ у последующих строк блока
            $i++
            while ($i -lt $lines.Count) {
                $next = $lines[$i]
                if ($next -match '^\s{4,}') {
                    # Снять ровно 4 ведущих пробела
                    $out.Add($next.Substring(4))
                    $i++
                    continue
                } elseif ($next -match '^\s*$') {
                    # Пустые строки сохраняем и продолжаем
                    $out.Add($next)
                    $i++
                    continue
                } else {
                    # Конец блока — обработаем эту строку в общем цикле
                    $i--
                    break
                }
            }
        } else {
            $out.Add($line)
        }
    }

    # Только если были изменения — перезапишем файл
    $newContent = ($out -join "`n")
    if ($newContent -ne $content) {
        $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
        [System.IO.File]::WriteAllText($file.FullName, $newContent, $utf8NoBom)
    }
}

Write-Host "Done stripping '!!! Abstract ""' blocks and dedenting content." -ForegroundColor Green


