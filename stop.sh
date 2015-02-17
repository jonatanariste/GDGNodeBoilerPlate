kill $(ps aux | grep 'nodejs' | awk '{print $2}')
echo 'se bajo la instancia de node correctamente'
