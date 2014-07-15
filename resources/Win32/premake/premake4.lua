OUT_DIR = "C:/Squeak/SqueakUN/"

solution "notifications"

	configurations {
		"Debug",
		"Release",
	}

	platforms {
		"x32",
		"x64",
	}

	language "C"

SOLUTION_DIR = path.getabsolute("..") .. "/"
location ( SOLUTION_DIR )

SRC_DIR = SOLUTION_DIR .. "src/" 
BUILD_DIR = SOLUTION_DIR .. "build/"

project ("notifications")
	kind "SharedLib"

configuration {} -- Following settings for all configurations

debugdir ( SOLUTION_DIR .. "bin/")

flags {
}

files {
	SRC_DIR .. "**.c",
	SRC_DIR .. "**.h", -- One can also have headers in src folder.
}

resincludedirs {
	SOLUTION_DIR .. "examples/bin/shaders/**.fx",
}

links {
	"winmm",
	"comctl32",
}

targetdir (OUT_DIR)
configuration { "vs*" }
	defines {
		"WIN32",
		"_WIN32",
		"_HAS_EXCEPTIONS=0",
		"_HAS_ITERATOR_DEBUGGING=0",
		"_SCL_SECURE=0",
		"_SECURE_SCL=0",
		"_SCL_SECURE_NO_WARNINGS",
		"_CRT_SECURE_NO_WARNINGS",
		"_CRT_SECURE_NO_DEPRECATE",
		"UNICODE", -- Optional
		"_UNICODE",
	}
	buildoptions {
		"/Oy-", -- Suppresses creation of frame pointers on the call stack.
		"/Ob2", -- The Inline Function Expansion
		"/MP", -- Multithreaded compiling
	}

configuration { "x32", "vs*" }
	targetdir (OUT_DIR)
	objdir (BUILD_DIR .. "win32_" .. _ACTION .. "/obj")
	libdirs {
	}

configuration { "x64", "vs*" }
	defines { "_WIN64" }
	objdir (BUILD_DIR .. "win64_" .. _ACTION .. "/obj")
	libdirs {
	}

configuration { "Debug" }
	buildoptions { "/Zi" }
	linkoptions {"/DEBUG" }
	targetsuffix "d"
	links {
	}

configuration { "Release" }
	links {
	}
	flags {
	}
