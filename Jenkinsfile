node {
    stage('Setup'){
        git credentialsId: '3af0504a-4b28-406d-917e-b091c21d943a', url:'https://github.com/Vsackor/https-github.com-UST-SEIS665-HW11-seis665-03-spring2019-Vsackor.git'
        sh 'aws:s3 cp s3://cf-templates-khqlru1bms20-us-east-1/classweb.html.rtf' 
    }
    stage('Build'){
        sh 'docker build -t classweb:1.0'
    }
    stage('Test'){
        sh 'docker stop classweb1||true'
        sh 'docker rm classweb1||true'
        sh 'docker run -d --name classweb1 -p 80:80 --env NGINX_PORT=80 classweb:1.0'
        sh 'curl -s $(/sbin/ip route|awk \'/default/ { print $3 }\')'
        sh 'docker stop classweb1'
        sh 'docker rm classweb1'
    }

}
