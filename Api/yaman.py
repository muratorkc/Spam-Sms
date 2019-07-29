import requests
string = """
		<request>
        	<authentication>
                <username>5312698478</username>
                <password>123456a</password>
        	</authentication>
        	<order>
	        	<sender>APITEST</sender>
	        	<sendDateTime></sendDateTime>
	        	<message>
	        		<text><![CDATA[Hop ki uc bes]]></text>
	        		<receipents>
	        			<number>5312638680</number>
	        		</receipents>
	        	</message>
        	</order>
        </request>""";

r = requests.post("http://api.iletimerkezi.com/v1/send-sms", data={"data": string})

print(r.status_code, r.reason)
