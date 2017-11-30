# $NetBSD: Makefile.versions,v 1.17 2013/10/20 18:37:49 asau Exp $
# -*- mode: makefile; tab-width: 8; indent-tabs-mode: 1 -*-
# vim: ts=8 sw=8 ft=make noet

ERLANG_VERSION=			18.3.4.7
DIST_VERSION_MAJOR=		18.3.4.7
#DIST_VERSION_MINOR=		1

_VERSIONS=				\
	asn1			4.0.2	\
	common_test		1.12.1.1	\
	compiler		6.0.3.1	\
	cosEvent		2.2	\
	cosEventDomain		1.2	\
	cosFileTransfer		1.2	\
	cosNotification		1.2.1	\
	cosProperty		1.2	\
	cosTime			1.2.1	\
	cosTransactions		1.3.1	\
	crypto			3.6.3.1	\
	debugger		4.1.2	\
	dialyzer		2.9	\
	diameter		1.11.2	\
	edoc			0.7.18	\
	eldap			1.2.1.1	\
	erl_docgen		0.4.2	\
	erl_interface		3.8.2	\
	erts			7.3.1.4	\
	et			1.5.1	\
	eunit			2.2.13	\
	gs			1.6	\
	hipe			3.15	\
	ic			4.4	\
	inets			6.2.4.1	\
	jinterface		1.6.1	\
	kernel			4.2	\
	megaco			3.18	\
	mnesia			4.13.4	\
	observer		2.1.2	\
	odbc			2.11.1	\
	orber			3.8.1	\
	os_mon			2.4	\
	ose			1.1	\
	otp_mibs		1.1	\
	parsetools		2.1.1	\
	percept			0.8.11	\
	public_key		1.1.1	\
	reltool			0.7	\
	runtime_tools		1.9.3	\
	sasl			2.7	\
	snmp			5.2.2	\
	ssh			4.2.2.4	\
	ssl			7.3.3.2	\
	stdlib			2.8	\
	syntax_tools		1.7	\
	test_server		3.10	\
	tools			2.8.3	\
	typer			0.9.10	\
	webtool			0.9.1	\
	wx			1.6.1	\
	xmerl			1.3.10

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
