# $NetBSD: Makefile,v 1.2 2012/10/31 11:19:24 asau Exp $
# -*- mode: makefile; tab-width: 8; indent-tabs-mode: 1 -*-
# vim: ts=8 sw=8 ft=make noet

MODNAME=		sysvmsg
CATEGORIES+=		devel
COMMENT=		PHP extension for SysV IPC Message Queues support

CONFIGURE_ARGS+=	--enable-${MODNAME}=shared,${BUILDLINK_DIR}

.include "../../base/php/ext.mk"
.include "../../mk/bsd.pkg.mk"
