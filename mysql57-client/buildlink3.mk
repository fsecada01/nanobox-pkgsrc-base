# $NetBSD: buildlink3.mk,v 1.2 2014/02/12 23:17:39 tron Exp $

BUILDLINK_TREE+=	mysql-client

.if !defined(MYSQL_CLIENT_BUILDLINK3_MK)
MYSQL_CLIENT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mysql-client+=	mysql-client>=5.7.10<5.8
BUILDLINK_ABI_DEPENDS.mysql-client+=	mysql-client>=5.7.10<5.8
BUILDLINK_PKGSRCDIR.mysql-client?=	../../base/mysql57-client
BUILDLINK_INCDIRS.mysql-client?=	include/mysql
BUILDLINK_LIBDIRS.mysql-client?=	lib

.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.endif # MYSQL_CLIENT_BUILDLINK3_MK

BUILDLINK_TREE+=	-mysql-client
