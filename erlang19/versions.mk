# $NetBSD: Makefile.versions,v 1.17 2013/10/20 18:37:49 asau Exp $
# -*- mode: makefile; tab-width: 8; indent-tabs-mode: 1 -*-
# vim: ts=8 sw=8 ft=make noet

ERLANG_VERSION=			19.0.5
DIST_VERSION_MAJOR=		19.0.5
#DIST_VERSION_MINOR=		1

_VERSIONS=				\
	asn1			4.0.3	\
	common_test		1.12.2	\
	compiler		7.0.1	\
	cosEvent		2.2.1	\
	cosEventDomain		1.2.1	\
	cosFileTransfer		1.2.1	\
	cosNotification		1.2.2	\
	cosProperty		1.2.1	\
	cosTime			1.2.2	\
	cosTransactions		1.3.2	\
	crypto			3.7	\
	debugger		4.2	\
	dialyzer		3.0.1	\
	diameter		1.12	\
	edoc			0.7.19	\
	eldap			1.2.2	\
	erl_docgen		0.5	\
	erl_interface		3.9	\
	erts			8.0.3	\
	et			1.6	\
	eunit			2.3	\
	gs			1.6.1	\
	hipe			3.15.1	\
	ic			4.4.1	\
	inets			6.3.2	\
	jinterface		1.7	\
	kernel			5.0.2	\
	megaco			3.18.1	\
	mnesia			4.14	\
	observer		2.2.1	\
	odbc			2.11.2	\
	orber			3.8.2	\
	os_mon			2.4.1	\
	otp_mibs		1.1.1	\
	parsetools		2.1.2	\
	percept			0.9	\
	public_key		1.2	\
	reltool			0.7.1	\
	runtime_tools		1.10	\
	sasl			3.0	\
	snmp			5.2.3	\
	ssh			4.3.1	\
	ssl			8.0.1	\
	stdlib			3.0.1	\
	syntax_tools		2.0	\
	tools			2.8.5	\
	typer			0.9.11	\
	wx			1.7	\
	xmerl			1.3.11

PLIST_SUBST+=	VERSION=${DIST_VERSION_MAJOR}

.for name version in ${_VERSIONS}
VERSION.${name}=${version}
PLIST_SUBST+=	VERSION.${name}=${version}
.endfor

# Generate PLIST
.for _pkg_ _version_ in $(_VERSIONS)
PRINT_PLIST_AWK+=	{if ($$0 ~ /\/$(_pkg_)-$(_version_)\//) {sub(/\/$(_pkg_)-$(_version_)\//,"/$(_pkg_)-$${VERSION.$(_pkg_)}/", $$0);}}
# documentation:
PRINT_PLIST_AWK+=	{gsub(/\/$(_pkg_)-$(_version_)\.pdf/,"/$(_pkg_)-$${VERSION.$(_pkg_)}.pdf", $$0);}
.endfor
PRINT_PLIST_AWK+=	{if ($$0 ~ /\/releases\/${DIST_VERSION_MAJOR}\//) {sub(/\/releases\/${DIST_VERSION_MAJOR}\//,"/releases/$${VERSION}/", $$0);}}
# documentation:
PRINT_PLIST_AWK+=	{gsub(/\/otp-system-documentation-$(VERSION.erts)\.pdf/,"/otp-system-documentation-$${VERSION.erts}.pdf", $$0);}
