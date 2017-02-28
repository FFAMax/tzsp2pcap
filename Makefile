# Configurable variables
CFLAGS = -O2

tzsp2pcap: tzsp2pcap.c
	gcc -o $@ $(CFLAGS) $(LDFLAGS) -lpcap $<

.PHONY: clean all

all: tzsp2pcap

clean:
	rm -f tzsp2pcap
