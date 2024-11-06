#!/bin/bash
# Проверка наличия curl и установка, если не установлен
if ! command -v curl &> /dev/null; then
    sudo apt update
    sudo apt install curl -y
fi
sleep 1

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

while true; do
    echo "Выберите ноду для установки:"
    echo "1. OceanProtocol"
    echo "2. ElixirNode"
    echo "3. NesaNode"
    echo "4. RivalzNode"
    echo "Выберите утилиту для установки:"
    echo "5. Monitoring of servers"
    echo "6. Выйти"
    read -p "Введите номер опции: " choice

    case $choice in
        1)
            wget -q -O OceanProtocolNode.sh https://raw.githubusercontent.com/ksydoruk1508/OceanProtocolNode/main/OceanProtocolNode.sh && sudo chmod +x OceanProtocolNode.sh && ./OceanProtocolNode.sh
            ;;
        2)
            wget -q -O ElixirNode.sh https://raw.githubusercontent.com/ksydoruk1508/ElixirNode/main/ElixirNode.sh && sudo chmod +x ElixirNode.sh && ./ElixirNode.sh
            ;;
        3)
            wget -q -O NesaNode.sh https://raw.githubusercontent.com/ksydoruk1508/NesaNode/main/NesaNode.sh && sudo chmod +x NesaNode.sh && ./NesaNode.sh
            ;;
        4)
            wget -q -O RivalzNode.sh https://raw.githubusercontent.com/ksydoruk1508/RivalzNode/main/RivalzNode.sh && sudo chmod +x RivalzNode.sh && ./RivalzNode.sh
            ;;
        5)
            wget -q -O Monitoring_of_servers.sh https://raw.githubusercontent.com/ksydoruk1508/monitoring_of_servers/main/Monitoring_of_servers.sh && sudo chmod +x Monitoring_of_servers.sh && ./Monitoring_of_servers.sh
            ;;
        6)
            echo "Выход..."
            break
            ;;
        *)
            echo "Неверный выбор. Пожалуйста, выберите номер от 1 до 6."
            ;;
    esac
    echo ""
done
