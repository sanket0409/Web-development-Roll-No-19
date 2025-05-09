<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>Students Result</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Name</th>
            <th>Roll no</th>
            <th>Branch</th>
            <th>Marks</th>
            <th>Status</th>
          </tr>
          <xsl:for-each select="class/student">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="roll"/></td>
              <td><xsl:value-of select="branch"/></td>
              <td><xsl:value-of select="marks"/></td>
              <td>
                <xsl:choose>
                  <xsl:when test="number(marks) &gt; 40">Pass</xsl:when>
                  <xsl:otherwise>Fail</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
