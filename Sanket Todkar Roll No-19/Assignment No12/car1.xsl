<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Car Showroom</title>
      </head>
      <body>
        <h2>Car Showroom Inventory</h2>
        <table border="1" cellpadding="5" cellspacing="0">
          <tr bgcolor="#cccccc">
            <th>Company</th>
            <th>Car Name</th>
            <th>Model</th>
            <th>Category</th>
            <th>Price (₹)</th>
            <th>Status</th>
          </tr>

          <xsl:for-each select="carShowroom/car">
            <tr>
              <td><xsl:value-of select="companyname"/></td>
              <td><xsl:value-of select="carname"/></td>
              <td><xsl:value-of select="model"/></td>
              <td><xsl:value-of select="@category"/></td>
              <td><xsl:value-of select="price"/></td>
              <td>
                <xsl:choose>
                  <xsl:when test="price &gt; 5000000">Luxury</xsl:when>
                  <xsl:otherwise>Standard</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
