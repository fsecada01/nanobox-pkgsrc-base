# $NetBSD: Makefile,v 1.23 2013/03/17 10:46:45 taca Exp $
# -*- mode: makefile; tab-width: 8; indent-tabs-mode: 1 -*-
# vim: ts=8 sw=8 ft=make noet

MODNAME=		rar
PECL_VERSION=		${PHP_EXTENSION_VERSION.${MODNAME}}
CATEGORIES+=		archivers

MAINTAINER=		pkgsrc-users@NetBSD.org
COMMENT=		rar extension
LICENSE=		php

USE_LANGUAGES+= 	c++
USE_LANGUAGES+= 	c

CONFLICTS=		php-rar-[0-9]*

CONFIGURE_ARGS+=	--enable-${MODNAME}
WRKSRC=			${WRKDIR}/rar-${PECL_VERSION}

PLIST_SRC+=		${.CURDIR}/PLIST.extras
PLIST_SUBST+=		PKGBASE=${PKGBASE:Q}

.include "../../base/php/extension_versions.mk"
.include "../../base/php/ext.mk"
.include "../../mk/bsd.pkg.mk"
