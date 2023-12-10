# --- Script que iniciliza el estado del tema de Mako --- #

import subprocess
import time

# Esperar 10 segundos sino no arranca waybar.
time.sleep(10)

# Guarda el resultado de correr darkman get.
tema_estado = subprocess.check_output(['darkman', 'get']).decode().strip()

# Dependiendo del estado elige el tema.
if tema_estado == 'light':
    subprocess.run(['makoctl', 'set-mode', 'light'])
else:
    subprocess.run(['makoctl', 'set-mode', 'dark'])
