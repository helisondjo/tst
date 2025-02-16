<?xml version="1.0" encoding="utf-8"?>
<style xmlns="http://purl.org/net/xbiblio/csl" class="in-text" version="1.0">
  <!-- This style was edited with the Visual CSL Editor (https://editor.citationstyles.org/visualEditor/) -->
  <info>
    <title>ABNT NBR 6023:2018 – Citação autor-data</title>
    <title-short>ABNT</title-short>
    <id>http://www.zotero.org/styles/abnt-nbr-6023-2018-–-citacão-autor-data</id>
    <link rel="self" href="http://www.zotero.org/styles/abnt-nbr-6023-2018-–-citacão-autor-data"/>
    <link href="http://www.zotero.org/styles/pesquisa-agropecuaria-brasileira" rel="template"/>
    <author>
      <name>Jucá Costa</name>
      <email>virgilino.neto@itec.ufpa.br</email>
    </author>
    <category citation-format="author-date"/>
    <updated>2020-10-01T19:16:27+00:00</updated>
    <rights>v0.15 (2020-10-01)</rights>
    <category/>
  </info>
  <locale xml:lang="pt-BR">
    <terms>
      <term name="month-01" form="short">jan.</term>
      <term name="month-02" form="short">fev.</term>
      <term name="month-03" form="short">mar.</term>
      <term name="month-04" form="short">abr.</term>
      <term name="month-05" form="short">maio</term>
      <term name="month-06" form="short">jun.</term>
      <term name="month-07" form="short">jul.</term>
      <term name="month-08" form="short">ago.</term>
      <term name="month-09" form="short">set.</term>
      <term name="month-10" form="short">out.</term>
      <term name="month-11" form="short">nov.</term>
      <term name="month-12" form="short">dez.</term>
      <term name="editor" form="short">
        <single>ed</single>
        <multiple>ed</multiple>
      </term>
      <term name="container-author" form="short">
        <single/>
        <multiple/>
      </term>
      <term name="collection-editor" form="short">
        <single>org</single>
        <multiple>org</multiple>
      </term>
      <term name="editorial-director" form="short"></term>
    </terms>
  </locale>
  <macro name="container-contributors">
    <names variable="container-author" delimiter=", ">
      <name delimiter="; " delimiter-precedes-last="always" initialize="false" initialize-with=". " name-as-sort-order="all">
        <name-part name="family" text-case="uppercase"/>
        <name-part name="given"/>
      </name>
      <et-al font-style="normal"/>
      <label form="short" plural="never" prefix=" (" suffix=".)"/>
      <substitute>
        <names variable="editor"/>
        <names variable="collection-editor"/>
      </substitute>
    </names>
  </macro>
  <macro name="secondary-contributors">
    <choose>
      <if type="chapter" match="none">
        <names variable="editor" delimiter=", " prefix=" (" suffix=")">
          <name and="symbol" initialize-with=". " delimiter=", "/>
          <label form="short" prefix=", " text-case="capitalize-first" suffix="."/>
        </names>
      </if>
    </choose>
  </macro>
  <macro name="translator">
    <names variable="translator" prefix="Tradução: ">
      <name et-al-min="3" et-al-use-first="1" initialize="false" sort-separator=" ">
        <name-part name="given" text-case="capitalize-first"/>
        <name-part name="family" text-case="capitalize-first"/>
      </name>
      <et-al font-style="italic"/>
    </names>
  </macro>
  <macro name="author">
    <group delimiter=". ">
      <names variable="author editor collection-editor editorial-director" delimiter="; ">
        <name delimiter="; " delimiter-precedes-last="always" et-al-min="7" et-al-use-first="1" initialize="false" initialize-with=". " name-as-sort-order="all">
          <name-part name="family" text-case="uppercase"/>
          <name-part name="given"/>
        </name>
        <et-al font-style="normal"/>
        <label form="short" plural="never" prefix=" (" suffix=".)"/>
        <substitute>
          <names variable="translator"/>
          <text macro="title"/>
        </substitute>
      </names>
      <text variable="authority"/>
    </group>
  </macro>
  <macro name="author-short">
    <names variable="author">
      <name form="short" font-variant="normal" font-weight="normal" delimiter="" and="symbol" delimiter-precedes-last="never" initialize-with=". " name-as-sort-order="all">
        <name-part name="family" text-case="uppercase"/>
      </name>
      <et-al font-style="italic"/>
      <substitute>
        <names variable="editor"/>
        <names variable="translator"/>
        <choose>
          <if type="paper-conference" match="any">
            <text variable="title" form="short" text-case="uppercase"/>
          </if>
          <else>
            <text variable="title" form="short" text-case="uppercase" suffix="…"/>
          </else>
        </choose>
      </substitute>
    </names>
  </macro>
  <macro name="author-chapter">
    <group delimiter=". ">
      <names variable="author" delimiter="; ">
        <name delimiter="; " delimiter-precedes-last="always" et-al-min="7" et-al-use-first="1" initialize="false" initialize-with=". " name-as-sort-order="all">
          <name-part name="family" text-case="uppercase"/>
          <name-part name="given"/>
        </name>
        <et-al/>
        <label form="short"/>
        <substitute>
          <text macro="title"/>
        </substitute>
      </names>
      <text variable="authority"/>
    </group>
  </macro>
  <macro name="url">
    <group delimiter=". ">
      <text variable="URL" prefix="Disponível em: "/>
      <date variable="accessed" prefix="Acesso em: ">
        <date-part name="day" suffix=" "/>
        <date-part name="month" form="short" text-case="lowercase" suffix=" "/>
        <date-part name="year"/>
      </date>
    </group>
  </macro>
  <macro name="title">
    <choose>
      <if type="chapter bill article-newspaper article-journal article-magazine paper-conference post-weblog" match="any">
        <text variable="title" strip-periods="false" quotes="false"/>
      </if>
      <else-if type="personal_communication" match="any">
        <choose>
          <if match="any" variable="title">
            <text variable="title" font-weight="bold"/>
          </if>
          <else>
            <text value="[Correspondência]" font-weight="bold"/>
          </else>
        </choose>
      </else-if>
      <else-if type="report webpage thesis" match="any">
        <choose>
          <if match="any" variable="container-title">
            <text variable="title"/>
          </if>
          <else>
            <text variable="title" font-weight="bold"/>
          </else>
        </choose>
      </else-if>
      <else>
        <text variable="title" font-weight="bold"/>
      </else>
    </choose>
  </macro>
  <macro name="container-title">
    <choose>
      <if type="paper-conference article" match="all">
        <choose>
          <if match="any" variable="container-title">
            <text variable="container-title" font-weight="bold"/>
          </if>
          <else>
            <text value="Anais" font-weight="bold" suffix=" [...]"/>
          </else>
        </choose>
      </if>
      <else>
        <text variable="container-title" font-weight="bold"/>
      </else>
    </choose>
  </macro>
  <macro name="publisher">
    <choose>
      <if match="any" type="article-newspaper article-journal article-magazine">
        <choose>
          <if match="any" variable="publisher-place">
            <text variable="publisher-place" suffix=": "/>
          </if>
          <else>
            <text value="s. l." font-style="italic" prefix="[" suffix="]"/>
          </else>
        </choose>
      </if>
      <else>
        <choose>
          <if match="any" variable="publisher-place publisher">
            <choose>
              <if variable="publisher-place">
                <text variable="publisher-place" suffix=": "/>
              </if>
              <else-if type="entry-encyclopedia"/>
              <else>
                <text value="S. l." font-style="italic" prefix="[" suffix="]: "/>
              </else>
            </choose>
            <choose>
              <if variable="publisher">
                <text variable="publisher"/>
              </if>
              <else>
                <text value="s. n." font-style="italic" prefix="[" suffix="]"/>
              </else>
            </choose>
          </if>
          <else>
            <group>
              <text value="S. l." font-style="italic" prefix="[" suffix=": "/>
              <text value="s. n." font-style="italic" suffix="]"/>
            </group>
          </else>
        </choose>
      </else>
    </choose>
  </macro>
  <macro name="event">
    <group delimiter=", ">
      <choose>
        <if match="any" variable="title author">
          <text variable="event"/>
        </if>
        <else>
          <text variable="event" text-case="uppercase"/>
        </else>
      </choose>
      <text variable="edition" suffix="."/>
      <choose>
        <if match="any" variable="event-date">
          <date date-parts="year" form="text" variable="event-date">
            <date-part name="year"/>
          </date>
        </if>
        <else>
          <text macro="issued-year"/>
        </else>
      </choose>
      <choose>
        <if match="any" variable="event-place">
          <text variable="event-place"/>
        </if>
        <else>
          <text variable="publisher-place"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="issued">
    <choose>
      <if variable="issued" match="any">
        <choose>
          <if type="thesis" match="any">
            <choose>
              <if match="all" variable="submitted">
                <date variable="submitted">
                  <date-part name="day" suffix=" "/>
                  <date-part name="month" text-case="lowercase" suffix=" "/>
                  <date-part name="year"/>
                </date>
              </if>
              <else>
                <text macro="issued-dmy"/>
              </else>
            </choose>
          </if>
          <else>
            <text macro="issued-dmy"/>
          </else>
        </choose>
      </if>
      <else>
        <text value="s. d." font-style="italic" prefix="[" suffix="]"/>
      </else>
    </choose>
  </macro>
  <macro name="issued-year">
    <choose>
      <if variable="issued" match="any">
        <date date-parts="year" form="text" variable="issued">
          <date-part name="year"/>
        </date>
      </if>
      <else>
        <text value="[s.d.]"/>
      </else>
    </choose>
  </macro>
  <macro name="edition">
    <choose>
      <if type="book chapter" match="any">
        <choose>
          <if is-numeric="edition">
            <group>
              <number suffix=". " variable="edition"/>
              <text term="edition" form="short"/>
            </group>
          </if>
          <else>
            <text variable="edition" suffix=" ed."/>
          </else>
        </choose>
      </if>
    </choose>
  </macro>
  <macro name="locators">
    <choose>
      <if type="bill">
        <group prefix=". " delimiter=", ">
          <date variable="issued">
            <date-part name="day"/>
            <date-part prefix=" " name="month" form="short"/>
            <date-part prefix=" " name="year"/>
          </date>
          <text variable="section" prefix="Sec. "/>
          <text variable="page" prefix="p. " suffix="."/>
        </group>
      </if>
      <else-if type="report" match="any">
        <text variable="page" prefix="p. "/>
      </else-if>
      <else>
        <group delimiter=", ">
          <text macro="volume-issue"/>
          <text macro="page-locator"/>
        </group>
      </else>
    </choose>
  </macro>
  <macro name="identifier">
    <group delimiter=". ">
      <text variable="ISBN" prefix="ISBN "/>
      <text variable="ISSN" prefix="ISSN "/>
      <text variable="DOI" prefix="DOI "/>
    </group>
  </macro>
  <macro name="collection">
    <group font-weight="normal" delimiter=", " prefix="(" suffix=")">
      <text variable="collection-title"/>
      <text variable="collection-number"/>
    </group>
  </macro>
  <macro name="citation-locator">
    <group>
      <label variable="locator" form="short"/>
      <text variable="locator" prefix=" "/>
    </group>
  </macro>
  <macro name="genre">
    <text variable="genre"/>
  </macro>
  <macro name="place">
    <choose>
      <if match="any" variable="publisher-place">
        <text variable="publisher-place"/>
      </if>
      <else>
        <text value="s. l." font-style="italic" prefix="[" suffix="]"/>
      </else>
    </choose>
  </macro>
  <macro name="archive">
    <group>
      <text variable="archive" prefix=" "/>
    </group>
  </macro>
  <macro name="volume-issue">
    <group delimiter=", ">
      <choose>
        <if match="any" is-numeric="volume">
          <text variable="volume" prefix="v. "/>
        </if>
        <else>
          <text variable="volume"/>
        </else>
      </choose>
      <text variable="issue" prefix="n. "/>
    </group>
  </macro>
  <macro name="publisher+issued">
    <group delimiter=", ">
      <text macro="publisher"/>
      <text macro="issued"/>
    </group>
  </macro>
  <macro name="issued-dmy">
    <date variable="issued">
      <date-part name="day" suffix=" "/>
      <date-part name="month" form="short" text-case="lowercase" suffix=" "/>
      <date-part name="year"/>
    </date>
  </macro>
  <macro name="place+publisher+date">
    <choose>
      <if type="personal_communication post-weblog" match="any">
        <choose>
          <if match="any" variable="publisher-place issued">
            <group delimiter=", ">
              <choose>
                <if match="any" variable="publisher-place">
                  <text variable="publisher-place"/>
                </if>
                <else>
                  <text value="S. l." font-style="italic" prefix="[" suffix="]"/>
                </else>
              </choose>
              <text macro="issued"/>
            </group>
          </if>
          <else>
            <text value="S. l." font-style="italic" prefix="[" suffix=","/>
            <text value="s. d." font-style="italic" suffix="]"/>
          </else>
        </choose>
      </if>
      <else>
        <choose>
          <if match="any" variable="issued publisher publisher-place">
            <group delimiter=", ">
              <text macro="publisher"/>
              <text macro="issued"/>
            </group>
          </if>
          <else>
            <group>
              <text value="S. l" prefix="[" suffix=": "/>
              <text value="s. n." suffix=", "/>
              <text value="s. d."/>
            </group>
          </else>
        </choose>
      </else>
    </choose>
  </macro>
  <macro name="advisor-or-recipient">
    <choose>
      <if type="thesis" match="any">
        <names variable="recipient" prefix="Orientador: ">
          <name initialize="false" sort-separator="">
            <name-part name="given"/>
            <name-part name="family"/>
          </name>
        </names>
      </if>
      <else>
        <names variable="recipient" prefix="Destinatário: ">
          <name initialize="false" sort-separator="">
            <name-part name="given"/>
            <name-part name="family"/>
          </name>
        </names>
      </else>
    </choose>
  </macro>
  <macro name="physical-description">
    <group delimiter=", ">
      <text macro="number-of-volumes" suffix=" v."/>
      <text macro="number-of-pages"/>
      <text variable="medium"/>
      <text variable="dimensions"/>
    </group>
  </macro>
  <macro name="number-of-pages">
    <choose>
      <if match="all" is-numeric="number-of-pages">
        <text variable="number-of-pages" suffix=" p."/>
      </if>
      <else>
        <text variable="number-of-pages"/>
      </else>
    </choose>
  </macro>
  <macro name="number-of-volumes">
    <choose>
      <if match="any" is-numeric="number-of-volumes">
        <text variable="number-of-volumes" suffix=" v."/>
      </if>
      <else>
        <text variable="number-of-volumes"/>
      </else>
    </choose>
  </macro>
  <macro name="page-locator">
    <choose>
      <if match="any" is-numeric="page">
        <text variable="page" prefix="p. "/>
      </if>
      <else>
        <text variable="page"/>
      </else>
    </choose>
  </macro>
  <citation et-al-min="3" et-al-use-first="1" disambiguate-add-year-suffix="true" collapse="year">
    <sort>
      <key macro="issued-year"/>
      <key macro="author"/>
    </sort>
    <layout prefix="(" suffix=")" delimiter="; ">
      <group delimiter=", ">
        <text macro="author-short"/>
        <text macro="issued-year"/>
        <text macro="citation-locator"/>
      </group>
    </layout>
  </citation>
  <bibliography hanging-indent="false" entry-spacing="1">
    <sort>
      <key macro="author-short"/>
      <key variable="issued"/>
    </sort>
    <layout>
      <choose>
        <if type="article-journal article-magazine article-newspaper" match="any">
          <group delimiter=". " suffix=".">
            <text macro="author"/>
            <text macro="title"/>
            <group delimiter=", ">
              <text macro="container-title"/>
              <text macro="place"/>
              <text macro="locators"/>
              <text macro="issued"/>
            </group>
            <text macro="physical-description"/>
            <text variable="note"/>
            <text macro="identifier"/>
            <text macro="url"/>
          </group>
        </if>
        <else-if type="chapter post-weblog" match="any">
          <group delimiter=". " suffix=".">
            <text macro="author-chapter"/>
            <text macro="title"/>
            <text macro="secondary-contributors"/>
            <group delimiter=": ">
              <text term="in" text-case="capitalize-first" font-style="italic"/>
              <group delimiter=". ">
                <text macro="container-contributors"/>
                <text macro="container-title" font-weight="normal"/>
              </group>
            </group>
            <text macro="translator"/>
            <text macro="edition"/>
            <text macro="place+publisher+date"/>
            <text macro="physical-description"/>
            <text macro="collection"/>
            <text variable="note"/>
            <text macro="locators"/>
            <text macro="identifier"/>
            <text macro="url"/>
          </group>
        </else-if>
        <else-if type="thesis">
          <group delimiter=". " suffix=".">
            <text macro="author"/>
            <text macro="title"/>
            <choose>
              <if match="any" variable="container-author">
                <group delimiter=": ">
                  <text term="in" text-case="capitalize-first" font-style="italic"/>
                  <text macro="container-contributors"/>
                </group>
              </if>
              <else/>
            </choose>
            <text macro="container-title"/>
            <text macro="advisor-or-recipient"/>
            <text macro="translator"/>
            <text macro="issued-year"/>
            <text macro="physical-description"/>
            <group delimiter=", ">
              <group delimiter=" – ">
                <text variable="genre"/>
                <text variable="publisher" prefix=" " suffix=","/>
              </group>
              <text variable="publisher-place" prefix=" "/>
              <text macro="issued"/>
            </group>
            <text variable="note" quotes="false"/>
            <text macro="locators"/>
            <text macro="identifier"/>
            <text macro="url"/>
          </group>
        </else-if>
        <else-if type="report">
          <group delimiter=". " suffix=".">
            <text macro="author"/>
            <text macro="title"/>
            <text macro="container-contributors"/>
            <text macro="secondary-contributors"/>
            <text macro="container-title"/>
            <group delimiter=", ">
              <text macro="publisher"/>
              <text macro="volume-issue"/>
              <text macro="issued"/>
            </group>
            <text macro="physical-description" prefix=" "/>
            <text macro="collection"/>
            <text variable="note"/>
            <text macro="locators" suffix=". "/>
            <text macro="identifier"/>
            <text macro="url"/>
          </group>
        </else-if>
        <else-if type="paper-conference">
          <group delimiter=". " suffix=".">
            <text macro="author"/>
            <text macro="title"/>
            <group delimiter=": ">
              <choose>
                <if match="all" variable="title author">
                  <text term="in" text-case="capitalize-first" font-style="italic"/>
                </if>
                <else/>
              </choose>
              <group delimiter=". ">
                <text macro="container-contributors" text-case="uppercase"/>
                <text macro="secondary-contributors"/>
                <text macro="event"/>
              </group>
            </group>
            <text macro="container-title" text-case="uppercase"/>
            <text macro="place+publisher+date"/>
            <text macro="physical-description"/>
            <text variable="note"/>
            <text macro="locators"/>
            <text macro="identifier" prefix=" "/>
            <text macro="url" prefix=" "/>
          </group>
        </else-if>
        <else-if type="patent" match="any">
          <group delimiter=". " suffix=".">
            <text macro="author"/>
            <text macro="title"/>
            <text macro="translator"/>
            <text variable="note"/>
            <text variable="number"/>
            <date variable="submitted" prefix="Depósito: ">
              <date-part name="day" suffix=" "/>
              <date-part name="month" suffix=" "/>
              <date-part name="year"/>
            </date>
            <text macro="issued" prefix="Concessão: "/>
            <text variable="call-number"/>
            <text variable="issue"/>
            <text macro="physical-description"/>
            <text macro="identifier"/>
            <text macro="url"/>
          </group>
        </else-if>
        <else-if type="map">
          <group delimiter=". " suffix=".">
            <text macro="author" suffix=". "/>
            <text macro="title" suffix=", "/>
            <text macro="issued" suffix=". "/>
            <text variable="note" suffix=". "/>
          </group>
        </else-if>
        <else-if type="bill">
          <group delimiter=". " suffix=".">
            <text macro="author"/>
            <text variable="number" suffix=". "/>
            <text macro="title" suffix=". "/>
            <text variable="references" font-weight="bold"/>
            <text variable="note"/>
            <text macro="locators" suffix=". "/>
          </group>
        </else-if>
        <else-if type="manuscript">
          <group delimiter=". " suffix=".">
            <text macro="author" suffix=". "/>
            <text macro="title" suffix=". "/>
            <text macro="edition" suffix=". "/>
            <text macro="place" suffix=", "/>
            <text macro="issued" suffix=". "/>
            <text macro="access" suffix=". "/>
            <text macro="archive" suffix=". "/>
          </group>
        </else-if>
        <else-if type="webpage">
          <group delimiter=". " suffix=".">
            <text macro="author"/>
            <text macro="title"/>
            <text macro="container-title"/>
            <text macro="publisher+issued"/>
            <text macro="genre" suffix=". "/>
            <text macro="identifier"/>
            <text macro="url"/>
          </group>
        </else-if>
        <else>
          <group delimiter=". " suffix=".">
            <text macro="author"/>
            <text macro="title"/>
            <text macro="translator"/>
            <text macro="advisor-or-recipient"/>
            <text macro="edition"/>
            <text macro="place+publisher+date"/>
            <text macro="physical-description"/>
            <text macro="collection"/>
            <text variable="note"/>
            <text macro="locators"/>
            <text macro="identifier"/>
            <text macro="url"/>
          </group>
        </else>
      </choose>
    </layout>
  </bibliography>
</style>

