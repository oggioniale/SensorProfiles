<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- Created By: Paolo Tagliolato - CNR IREA in Milano - 2014-11-10T21:00:00Z -->
<!-- Licence CC By SA 3.0  http://creativecommon.org/licences/by-SA/3.0 -->

    <xsl:template match="/">
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <meta name="description" content="Profiles list of different sensor system"/>
            <meta name="author" content="Alessandro Oggioni"/>
            <meta name="author" content="Paolo Tagliolato"/>
            <meta name="author" content="Fabio Pavesi"/>
            <link rel="icon" href="http://skmi.irea.cnr.it/static/geosk/img/favicon.ico"/>
            <title>Sensor Profile Selection</title>
            <!-- Latest compiled and minified CSS -->
            <link rel="stylesheet"
                  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" />

            <!-- Optional theme -->
            <link rel="stylesheet"
                  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap-theme.min.css" />

            <!-- Latest compiled and minified JavaScript -->
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
            <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        </head>
        <body>
            <div class="container">
                <div class="row row-offcanvas row-offcanvas-right">
                    <div class="col-xs-12 col-sm-12 col-lg-12">
                        <div class="page-header">
                            <h1>Sensor Profile Selection</h1>
                            <p>A list of SensorML profile of different sensors. Select one of the profiles below to get the SensorML EDI template for specific system.</p>
                        </div>

                        <xsl:apply-templates/>

            </div></div></div></body></html>
    </xsl:template>

    <xsl:template match="item">
        <div class="media">
            <a
                    href="{url/text()}"
                    class="pull-left" target="_blank">
                <img class="media-object"
                     src="{img/@src}"
                     height="{img/@height}" width="{img/@width}" />
            </a>
            <div class="media-body">
                <h4 class="media-heading"><xsl:value-of select="name/text()"/>
                    <a href="{name/@href}">
                        <small>
                            <i><xsl:value-of select="name/@href"/></i>
                        </small>
                    </a>
                    <a href="{url/text()}"
                       role="button"
                       class="btn btn-success btn-mini pull-right" target="_blank">
                        Go to profile!
                    </a>
                </h4>
                <p><xsl:value-of select="description/text()"/></p>
            </div>
        </div>
        <div class="media"><hr/></div>
    </xsl:template>

</xsl:stylesheet>