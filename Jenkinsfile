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

        stage("Paso 2: Construcción") {
            steps {
                echo "Paso 2: Construcción del proyecto en proceso..."
            }
        }

        stage("Paso 3: Despliegue") {
            steps {
                echo "Paso 3: Desplegando el proyecto..."
            }
        }
    }

    post {
        always {
            echo "Pipeline completado. Limpieza finalizada."
        }
    }
}
