<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Healthy Smoothie - Sitemap</title>
        <style>
          body { font-family: Arial, sans-serif; background: #f8f9fa; padding: 20px; }
          h1 { color: #333; }
          table { border-collapse: collapse; width: 100%; background: white; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
          th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
          th { background: #4CAF50; color: white; }
          tr:nth-child(even) { background: #f2f2f2; }
          a { color: #4CAF50; text-decoration: none; }
        </style>
      </head>
      <body>
        <h1>Healthy Smoothie Sitemap</h1>
        <table>
          <tr>
            <th>URL</th>
            <th>Last Modified</th>
            <th>Change Frequency</th>
            <th>Priority</th>
          </tr>
          <xsl:for-each select="s:urlset/s:url">
            <tr>
              <td><a href="{s:loc}" target="_blank"><xsl:value-of select="s:loc"/></a></td>
              <td><xsl:value-of select="s:lastmod"/></td>
              <td><xsl:value-of select="s:changefreq"/></td>
              <td><xsl:value-of select="s:priority"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
