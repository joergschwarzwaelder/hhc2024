# Objective 2: Elf Connect

**Difficultree: 🎄**  
**Location: Frosty's Beach**

This objective consists out of four rounds with 16 words each.
The 16 words have to be grouped into four groups with four words each, which share something in common.

The Javascript source gives away the solutions:
```
        const wordSets = {
            1: ["Tinsel", "Sleigh", "Belafonte", "Bag", "Comet", "Garland", "Jingle Bells", "Mittens", "Vixen", "Gifts", "Star", "Crosby", "White Christmas", "Prancer", "Lights", "Blitzen"],
            2: ["Nmap", "burp", "Frida", "OWASP Zap", "Metasploit", "netcat", "Cycript", "Nikto", "Cobalt Strike", "wfuzz", "Wireshark", "AppMon", "apktool", "HAVOC", "Nessus", "Empire"],
            3: ["AES", "WEP", "Symmetric", "WPA2", "Caesar", "RSA", "Asymmetric", "TKIP", "One-time Pad", "LEAP", "Blowfish", "hash", "hybrid", "Ottendorf", "3DES", "Scytale"],
            4: ["IGMP", "TLS", "Ethernet", "SSL", "HTTP", "IPX", "PPP", "IPSec", "FTP", "SSH", "IP", "IEEE 802.11", "ARP", "SMTP", "ICMP", "DNS"]
        };

        let correctSets = [
            [0, 5, 10, 14], // Set 1
            [1, 3, 7, 9],   // Set 2
            [2, 6, 11, 12], // Set 3
            [4, 8, 13, 15]  // Set 4
        ];
```
So from each individual word set, words 0,5,10,14 (for set one: Tinsel, Garland, Star, Lights) form one group, words 1,3,7,9 the next one and so on.

## Easy
Just complete the game according to the information from the JS source.

**Achievement: [Silver] Elf Connect**

## Hard
Completing the objective in the "hard" way and getting the "Gold" achievement is possible using the browser's developer console.
Open the "Console" and select the context "Christmas Word Connect Game".
```
score=60000
round=4
```
Next, simply complete one single group of four words.

**Achievement: [Gold] Elf Connect**
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE2NDU4MTQwMDksLTQzNzI5MDI1Ml19
-->