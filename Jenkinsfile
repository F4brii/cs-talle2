pipeline {
    agent any // Usa cualquier agente disponible

    stages {
        stage("Paso 1: Preparación") {
            steps {
                echo "Paso 1: Iniciando la preparación del entorno..."
                // Cambiar de carpeta
                dir('Seleniumhooks/Test') {
                    echo "Cambiando al directorio 'my_project'..."

                    // Instalar dependencias de Python
                    echo "Instalando dependencias de Python..."
                    sh '''
                    pip install -r requirements.txt --break-system-packages
                    '''
                }
            }
        }

        stage("Paso 2: Ejecutar pruebas unitarias") {
            steps {
                echo "Paso 2: Ejecutar pruebas unitarias..."
                dir('Seleniumhooks/Test') {
                    echo "Cambiando al directorio 'my_project'..."

                    // Instalar dependencias de Python
                    echo "Instalando dependencias de Python..."
                    sh '''
                    python3 -m unittest test0.py
                    python3 -m unittest test1.py
                    '''
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline completado. Limpieza finalizada."
        }
    }
}
