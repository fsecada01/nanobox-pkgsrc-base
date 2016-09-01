# $NetBSD: buildlink3.mk,v 1.7 2009/03/20 19:24:17 joerg Exp $

BUILDLINK_TREE+=	corosync

.if !defined(LIBDWARF_BUILDLINK3_MK)
LIBDWARF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.corosync+=	corosync>=2.3.5
BUILDLINK_PKGSRCDIR.corosync?=	../../base/corosync
.endif # LIBDWARF_BUILDLINK3_MK

BUILDLINK_TREE+=	-corosync
