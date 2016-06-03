#ifndef SHELLINABOXD_H__
#define SHELLINABOXD_H__

#include "libhttp/httpconnection.h"

int shellInABoxHttpHandler(HttpConnection *http, void *arg, const char *buf, int len);

#endif