#!/bin/bash

# Цвета текста
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # Нет цвета (сброс цвета)

# Проверка наличия curl и установка, если не установлен
if ! command -v curl &> /dev/null; then
    sudo apt update
    sudo apt install curl -y
fi

echo -e "${GREEN}"
cat << "EOF"
██    ██ ██      ████████ ██ ███    ███  █████  ████████ ██ ██    ██ ███████     ███    ██  ██████  ██████  ███████ 
██    ██ ██         ██    ██ ████  ████ ██   ██    ██    ██ ██    ██ ██          ████   ██ ██    ██ ██   ██ ██      
██    ██ ██         ██    ██ ██ ████ ██ ███████    ██    ██ ██    ██ █████       ██ ██  ██ ██    ██ ██   ██ █████   
██    ██ ██         ██    ██ ██  ██  ██ ██   ██    ██    ██  ██  ██  ██          ██  ██ ██ ██    ██ ██   ██ ██      
 ██████  ███████    ██    ██ ██      ██ ██   ██    ██    ██   ████   ███████     ██   ████  ██████  ██████  ███████ 
                                                                                                                    
                                                                                                                    
                    ██ ███    ██ ███████ ████████  █████  ██      ██      ███████ ██████                            
                    ██ ████   ██ ██         ██    ██   ██ ██      ██      ██      ██   ██                           
                    ██ ██ ██  ██ ███████    ██    ███████ ██      ██      █████   ██████                            
                    ██ ██  ██ ██      ██    ██    ██   ██ ██      ██      ██      ██   ██                           
                    ██ ██   ████ ███████    ██    ██   ██ ███████ ███████ ███████ ██   ██

________________________________________________________________________________________________________________________________________


███████  ██████  ██████      ██   ██ ███████ ███████ ██████      ██ ████████     ████████ ██████   █████  ██████  ██ ███    ██  ██████  
██      ██    ██ ██   ██     ██  ██  ██      ██      ██   ██     ██    ██           ██    ██   ██ ██   ██ ██   ██ ██ ████   ██ ██       
█████   ██    ██ ██████      █████   █████   █████   ██████      ██    ██           ██    ██████  ███████ ██   ██ ██ ██ ██  ██ ██   ███ 
██      ██    ██ ██   ██     ██  ██  ██      ██      ██          ██    ██           ██    ██   ██ ██   ██ ██   ██ ██ ██  ██ ██ ██    ██ 
██       ██████  ██   ██     ██   ██ ███████ ███████ ██          ██    ██           ██    ██   ██ ██   ██ ██████  ██ ██   ████  ██████  
                                                                                                                                         
                                                                                                                                        
 ██  ██████  ██       █████  ███    ██ ██████   █████  ███    ██ ████████ ███████                                                         
██  ██        ██     ██   ██ ████   ██ ██   ██ ██   ██ ████   ██    ██    ██                                                             
██  ██        ██     ███████ ██ ██  ██ ██   ██ ███████ ██ ██  ██    ██    █████                                                          
██  ██        ██     ██   ██ ██  ██ ██ ██   ██ ██   ██ ██  ██ ██    ██    ██                                                             
 ██  ██████  ██      ██   ██ ██   ████ ██████  ██   ██ ██   ████    ██    ███████

Donate: 0x0004230c13c3890F34Bb9C9683b91f539E809000
EOF
echo -e "${NC}"
echo -e "${PURPLE}Все текстовые гайды / All text guides - https://teletype.in/@c6zr7${NC}"
echo " "

while true; do
    echo -e "${YELLOW}Выберите ноду для установки / Select a node for installation:${NC}"
    echo " "
    echo -e "${CYAN}1. OceanProtocol${NC}"
    echo -e "${CYAN}2. ElixirNode${NC} ${RED}- END${NC}"
    echo -e "${CYAN}3. NesaNode${NC}"
    echo -e "${CYAN}4. RivalzNode${NC} ${RED}- END${NC}"
    echo -e "${CYAN}5. HemiNode${NC} ${RED}- END${NC}"
    echo -e "${CYAN}6. Gaianet${NC}"
    echo -e "${CYAN}7. Impossible Cloud Network${NC} ${RED}- END${NC}"
    echo -e "${CYAN}8. Vana${NC} ${RED}- END${NC}"
    echo -e "${CYAN}9. Nillion${NC} ${RED}- END${NC}"
    echo -e "${CYAN}10. CysicNode${NC}"
    echo -e "${CYAN}11. TitanNode${NC}"
    echo -e "${CYAN}12. T3rnNode${NC}"
    echo -e "${CYAN}13. GensynNode${NC}"
    echo -e "${CYAN}14. UnichainNode${NC}"
    echo " "
    echo -e "${YELLOW}Выберите утилиту для установки / Select a utility for installation:${NC}"
    echo " "
    echo -e "${CYAN}20. Monitoring of servers${NC}"
    echo -e " "
    echo -e "${CYAN}21. Выйти / Exit${NC}"
    read -p "Введите номер опции / Enter the option number: " choice

    case $choice in
        1)
            rm -f OceanProtocolNode.sh && wget -q -O OceanProtocolNode.sh https://raw.githubusercontent.com/ksydoruk1508/OceanProtocolNode/main/OceanProtocolNode.sh && sudo chmod +x OceanProtocolNode.sh && ./OceanProtocolNode.sh
            ;;
        2)
            rm -f ElixirNode.sh && wget -q -O ElixirNode.sh https://raw.githubusercontent.com/ksydoruk1508/ElixirNode/main/ElixirNode.sh && sudo chmod +x ElixirNode.sh && ./ElixirNode.sh
            ;;
        3)
            rm -f NesaNode.sh && wget -q -O NesaNode.sh https://raw.githubusercontent.com/ksydoruk1508/NesaNode/main/NesaNode.sh && sudo chmod +x NesaNode.sh && ./NesaNode.sh
            ;;
        4)
            rm -f RivalzNode.sh && wget -q -O RivalzNode.sh https://raw.githubusercontent.com/ksydoruk1508/RivalzNode/main/RivalzNode.sh && sudo chmod +x RivalzNode.sh && ./RivalzNode.sh
            ;;
        5)
            rm -f Hemi.sh && wget -q -O Hemi.sh https://raw.githubusercontent.com/ksydoruk1508/Hemi/main/Hemi.sh && sudo chmod +x Hemi.sh && ./Hemi.sh
            ;;
        6)  
            rm -f GaianetNode.sh && wget -q -O GaianetNode.sh https://raw.githubusercontent.com/ksydoruk1508/GaianetNode/main/GaianetNode.sh && sudo chmod +x GaianetNode.sh && ./GaianetNode.sh
            ;;
        7)
            rm -f ICN_node.sh && wget -q -O ICN_node.sh https://raw.githubusercontent.com/ksydoruk1508/ICN_node/main/ICN_node.sh && sudo chmod +x ICN_node.sh && ./ICN_node.sh
            ;;
        8)
            rm -f Vana.sh && wget -q -O Vana.sh https://raw.githubusercontent.com/ksydoruk1508/Vana/main/Vana.sh && sudo chmod +x Vana.sh && ./Vana.sh
            ;;
        9)
            rm -f Nillion.sh && wget -q -O Nillion.sh https://raw.githubusercontent.com/ksydoruk1508/Nillion/main/Nillion.sh && sudo chmod +x Nillion.sh && ./Nillion.sh
            ;;    
        10)
            rm -f CysicNode.sh && wget -q -O CysicNode.sh https://raw.githubusercontent.com/ksydoruk1508/CysicNode/main/CysicNode.sh && sudo chmod +x CysicNode.sh && ./CysicNode.sh
            ;; 
        11) 
            rm -f TitanNode.sh && wget -q -O TitanNode.sh https://raw.githubusercontent.com/ksydoruk1508/TitanNode/main/TitanNode.sh && sudo chmod +x TitanNode.sh && ./TitanNode.sh
            ;;
        12) 
            rm -f t3rn.sh && wget -q -O t3rn.sh https://raw.githubusercontent.com/ksydoruk1508/t3rn/main/t3rn.sh && sudo chmod +x t3rn.sh && ./t3rn.sh
            ;;
        13) 
            rm -f GensynNode.sh && wget -q -O GensynNode.sh https://raw.githubusercontent.com/ksydoruk1508/GensynNode/main/GensynNode.sh && sudo chmod +x GensynNode.sh && ./GensynNode.sh
            ;;
        14) 
            rm -f UnichainNode.sh && wget -q -O UnichainNode.sh https://raw.githubusercontent.com/ksydoruk1508/UnichainNode/main/UnichainNode.sh && sudo chmod +x UnichainNode.sh && ./UnichainNode.sh
            ;;
        20)
            rm -f Monitoring_of_servers.sh && wget -q -O Monitoring_of_servers.sh https://raw.githubusercontent.com/ksydoruk1508/monitoring_of_servers/main/Monitoring_of_servers.sh && sudo chmod +x Monitoring_of_servers.sh && ./Monitoring_of_servers.sh
            ;;
        21)
            echo "Выход / Exit..."
            break
            ;;
        *)
        echo "Неверный выбор. Пожалуйста, выберите номер от 1 до 11 / Invalid selection. Please choose a number from 1 to 11."
        ;;
esac

    echo ""
done
