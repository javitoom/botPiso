require 'telegram/bot'

token = '362499253:AAHGkSVHLZa_oasHBhUMD0WI8rcR-LCDsnE'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
      when '/prueba'
        bot.api.send_message(chat_id: message.chat.id, text: "Welcome to la cueva del overaun")
      when '/overauns'
        #value = %x( nmap -sP -n 192.168.1.0/24 )
        nmapResult='                                                                                                                        Starting Nmap 6.47 ( http://nmap.org ) at 2017-02-07 20:10 CET                                                          Nmap scan report for 192.168.1.1                                                                                        Host is up (0.00082s latency).                                                                                          MAC Address: D4:63:FE:8E:9E:07 (Unknown)                                                                                Nmap scan report for 192.168.1.102                                                                                      Host is up (0.013s latency).                                                                                            MAC Address: 10:2A:B3:EB:DE:77 (Unknown)                                                                                Nmap scan report for 192.168.1.106                                                                                      Host is up (0.024s latency).                                                                                            MAC Address: 74:23:44:E8:06:16 (Unknown)                                                                                Nmap scan report for 192.168.1.116                                                                                      Host is up (-0.073s latency).                                                                                           MAC Address: C4:6E:1F:18:42:66 (Tp-link Technologies Co.)                                                               Nmap scan report for 192.168.1.117                                                                                      Host is up (-0.10s latency).                                                                                            MAC Address: 30:5A:3A:0C:01:C2 (Unknown)                                                                                Nmap scan report for 192.168.1.123                                                                                      Host is up (-0.10s latency).                                                                                            MAC Address: 6C:C2:17:6A:9C:0C (Hewlett Packard)                                                                        Nmap scan report for 192.168.1.254                                                                                      Host is up (-0.10s latency).                                                                                            MAC Address: 94:44:52:BC:08:F3 (Belkin International)                                                                   Nmap scan report for 192.168.1.112                                                                                      Host is up.                                                                                                             Nmap done: 256 IP addresses (8 hosts up) scanned in 2.23 seconds'
    end
  end
end
