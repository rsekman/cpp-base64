WARNINGS=                    \
   -Werror                   \
   -Wall                     \
   -Wextra                   \
   -pedantic                 \
   -Wcast-align              \
   -Wcast-qual               \
   -Wctor-dtor-privacy       \
   -Wdisabled-optimization   \
   -Wformat=2                \
   -Winit-self               \
   -Wlogical-op              \
   -Wmissing-include-dirs    \
   -Wmissing-declarations    \
   -Wnoexcept                \
   -Wold-style-cast          \
   -Woverloaded-virtual      \
   -Wredundant-decls         \
   -Wshadow                  \
   -Wsign-promo              \
   -Wstrict-null-sentinel    \
   -Wstrict-overflow=5       \
   -Wundef                   \
   -Wno-unused               \
   -Wno-variadic-macros      \
   -Wno-parentheses          \
   -fdiagnostics-show-option

CXX?=g++
CFLAGS?=--std=c++17

SOURCES=base64.cpp base64.h

test: base64-test
	./$<

base64-test: base64.o test.o
	$(CXX) $(CFLAGS) $^ -o $@

base64.o: $(SOURCES)
	$(CXX) $(CFLAGS) $(WARNINGS) -c $< -o $@

test.o: test.cpp
	$(CXX) $(CFLAGS) $(WARNINGS) -c $^ -o $@
