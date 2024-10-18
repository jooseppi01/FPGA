# FPGA

## Tähän repositoryyn on lisätty kurssin FPGA Circuits and VHDL Language viikottaiset projektit

### Viikko 1
- Tee yksinkertainen laskin, joka laskee vipukytkinten arvoja yhteen, ja näyttää ledeillä. (4bittiä + 4bittiä, tulos on 5 lediä), sekä laskee samojen lukujen loogisen XOR-operaation ja näyttää sen eri ledeillä (4 lediä). Muokkaa esimerkkitestipenkkiä siten, että se soveltuu harjoituksen testaamiseen, eli kokeilee ainakin muutamia eri arvopareja, joilla nähdään piirin toimivan suunnitellusti.
- Tee piiri, joka käyttää DE-10 Lite laudan kelloa (selvitä käyttöohjeesta), ja tuottaa sen avulla pulsseja LED:ille siten että jakson aika on yksi sekunti. Palauta raportti työstä docx tai pdf -muodossa, sekä lyhyt parin sekunnin video toimivasta piiristä
## Viikko 2
- Tee laskuri, joka laskee sekunteja, ja näyttää ne binäärisenä ledeillä ( 7 lediä riittää). Palauta raportti työstä docx tai pdf -muodossa, sekä lyhyt (muutama sekunti riittää) video jossa toiminta näkyy. Raportissa tulee olla mukana koodit.
- Tee multiplekseri (käyttäen selectiä tai casea), joka valitsee kahdella vipukytkimellä (tilat 00,01,10,11) näytetäänkö LED:illä '0', painonapin tila, käänteinen painonapin tila, vai '1' . Tee testipenkki ja simuloi toiminta
## Viikko 3
- Tee sekuntikello, joka laskee sekunteja 60 asti, jonka jälkeen se pysähtyy. Luvut näytetään 7-segmentillä. Sekuntikellossa tulee olla käynnistys- ja pysäytyspainike, sekä nollausnappi. Suunnittele tilakoneen toimita piirtämällä (valitsemasi tyyppinen) kaavio. Verifioi toiminta testialustalla ja tekemälläsi testipenkillä. Simulaattorilla testausta varten kannattaa pienentää jakajaa, että ei tarvitse odottaa 50 miljoonaa kellojaksoa sekunnin vaihtumista.
- Tee "4-bittisestä binääri-luvusta  7-segmenttiin" (yksi heksaluku) muunnin käyttäen case-rakennetta. Osoita muuntimen toiminta testipenkillä, ja testaa se myös kehitysalustalla siten, että neljän vipukytkimen osoittama binääriluku näkyy heksana 7-segmenttinäytöllä.
## Viikko 4
- Tee rinnan-sarjaan -muunnin. Piiri lataa sisään 8-bittisen luvun vipukytkimiltä, ja syöttää sen ulos sarjamuotoisena. Operaatio aloitetaan painamalla painonappia. Ulostulo näytetään LED:illä. Käytä sarjaliikenteessä taajuutta 1Hz. Testaa myös testipenkillä, ja muuta sitä varten sarjaliikenteen taajuus korkeammaksi, esim 10MHz (jotta ei tarvi ajaa simulaatiota ikuisuutta).
- Tee yksinkertainen muisti, johon tallennetaan 8-bittisiä sanoja. Data syötetään vipukytkimillä, ja luetaan ulos ledeillä. Kahdella vipukytkimellä valitaan osoite (eli 4 osoitetta). Toinen painonappi suorittaa lukuoperaation, jolloin muistipaikan sisältö tulee ledeille näkyviin, ja toinen painonappi suorittaa kirjoitusoperaation, jolloin vipukytkinten asento ohjelmoidaan muistiin. Tee testipenkki, ja simuloi piirin toiminta.
## Viikko 5
- Tee wikipedian kuvan mukainen 16-bittinen Fibonacci LFSR -pseudosatunaislukugeneraattori:https://en.wikipedia.org/wiki/Linear-feedback_shift_register. Muista ladata rekisteriin nollasta poikkeava alkuarvo.Rakenna piiri siten, että se kerää aina 8 peräkkäistä ulostulobittiä yhteen, ja sitten siirtää ne 8-bittiseen tulosvektoriin. Tee piirille testipenkki, joka tulostaa tiedostoon 8-bittiset tulokset. kymmenjärjestelmän lukuina.Palauta koodit designista ja testipenkistä, sekä tuottamasi tiedosto, jossa vähintään 100 tulosta tallennettuna
## Viikko 6
- Tee siniaaltoa generoiva piiri. Piirissä tulee olla 1024 alkoinen taulukko, jossa on siniaallon arvot tallessa 8-bitin tarkkuudella. Piirillä on yksi tulo, joka on 8-bittinen, ja se ohjaa syntetisoitavan siniaallon nopeutta. Piirin lähtö on 8-bittinen. Tee testipenkki piirille, joka demonstroi muutamalla eri taajuudella piirin toimintaa.
## Viikko 7
- Suunnittele yksinkertainen FIR-suodatin, jossa on neljä napaa. Kaikki kertoimet ovat ykkösiä (eli kertolaskua ei tarvitse tehdä). Toisin sanoen kyseessä on piiri, joka laskee liukuvan keskiarvon neljästä peräkkäisestä arvosta. Piirillä on yksi 32-bittinen tulo, ja yksi 32 bittinen lähtö, sekä kellotulo ja reset-tulo.
Suunnitte testipenkki, jolla testaat piirin toiminnan. Aja designille "full compilation" (ei tarvitse asettaa oikeita pinnejä. Quartus arvaa jotain, jos ei ole asetettu), ja selvitä suurin kellotaajuus millä piiri voi toimia käyttäen annettua SDC-tiedostoa.
Muuta design liukuhihna-malliseksi siten, että siihen lisätään kuvan mukaiset ylimääräiset viiverekisterit. Simuloi ja compiloi piiiri uudelleen.
