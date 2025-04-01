CXXFLAGS=-I ~/prgs/rapidjson/include -g -pthread
LDFLAGS=-lcurl
LD=g++
CC=g++

all: level_client par_level_client

level_client: level_client.o
	$(LD) $< -o $@ $(LDFLAGS)

level_client.o: level_client.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
	-rm level_client level_client.o
