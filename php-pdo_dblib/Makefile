# $NetBSD: Makefile,v 1.18 2013/02/22 03:07:44 taca Exp $
# -*- mode: makefile; tab-width: 8; indent-tabs-mode: 1 -*-
# vim: ts=8 sw=8 ft=make noet

MODNAME=		pdo_dblib
CATEGORIES+=		databases
COMMENT=		PHP extension for PHP Data Objects (FreeTDS/Sybase/MS SQL)

USE_PHP_EXT_PATCHES=	yes

.include "../../mk/bsd.prefs.mk"

.include "../../base/php/ext.mk"

CONFIGURE_ARGS+=	--with-${MODNAME}
CONFIGURE_ARGS+=	--with-${PKGMODNAME}=shared,${BUILDLINK_DIR}

# requires 0.63 version to compile, doesn't compile with 0.61
BUILDLINK_API_DEPENDS.freetds+=	freetds>=0.63

.include "../../databases/freetds/buildlink3.mk"
.include "../../base/php-pdo/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
