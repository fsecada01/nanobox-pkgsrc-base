$NetBSD$

--- deps/v8/src/v8.gyp.orig	2016-10-25 13:26:05.000000000 +0000
+++ deps/v8/src/v8.gyp
@@ -2118,14 +2118,14 @@
                       '<(PRODUCT_DIR)/natives_blob_host.bin',
                     ],
                     'action': [
-                      'python', '<@(_inputs)', '<(PRODUCT_DIR)/natives_blob_host.bin'
+                      '@PYTHONBIN@', '<@(_inputs)', '<(PRODUCT_DIR)/natives_blob_host.bin'
                     ],
                   }, {
                     'outputs': [
                       '<(PRODUCT_DIR)/natives_blob.bin',
                     ],
                     'action': [
-                      'python', '<@(_inputs)', '<(PRODUCT_DIR)/natives_blob.bin'
+                      '@PYTHONBIN@', '<@(_inputs)', '<(PRODUCT_DIR)/natives_blob.bin'
                     ],
                   }],
                 ],
@@ -2134,7 +2134,7 @@
                   '<(PRODUCT_DIR)/natives_blob.bin',
                 ],
                 'action': [
-                  'python', '<@(_inputs)', '<(PRODUCT_DIR)/natives_blob.bin'
+                  '@PYTHONBIN@', '<@(_inputs)', '<(PRODUCT_DIR)/natives_blob.bin'
                 ],
               }],
             ],
@@ -2217,7 +2217,7 @@
           ],
           'outputs': ['<(SHARED_INTERMEDIATE_DIR)/libraries.cc'],
           'action': [
-            'python',
+            '@PYTHONBIN@',
             '../tools/js2c.py',
             '<(SHARED_INTERMEDIATE_DIR)/libraries.cc',
             'CORE',
@@ -2232,7 +2232,7 @@
           ],
           'outputs': ['<@(libraries_bin_file)'],
           'action': [
-            'python',
+            '@PYTHONBIN@',
             '../tools/js2c.py',
             '<(SHARED_INTERMEDIATE_DIR)/libraries.cc',
             'CORE',
@@ -2249,7 +2249,7 @@
           ],
           'outputs': ['<(SHARED_INTERMEDIATE_DIR)/experimental-libraries.cc'],
           'action': [
-            'python',
+            '@PYTHONBIN@',
             '../tools/js2c.py',
             '<(SHARED_INTERMEDIATE_DIR)/experimental-libraries.cc',
             'EXPERIMENTAL',
@@ -2264,7 +2264,7 @@
           ],
           'outputs': ['<@(libraries_experimental_bin_file)'],
           'action': [
-            'python',
+            '@PYTHONBIN@',
             '../tools/js2c.py',
             '<(SHARED_INTERMEDIATE_DIR)/experimental-libraries.cc',
             'EXPERIMENTAL',
@@ -2281,7 +2281,7 @@
           ],
           'outputs': ['<(SHARED_INTERMEDIATE_DIR)/extras-libraries.cc'],
           'action': [
-            'python',
+            '@PYTHONBIN@',
             '../tools/js2c.py',
             '<(SHARED_INTERMEDIATE_DIR)/extras-libraries.cc',
             'EXTRAS',
@@ -2296,7 +2296,7 @@
           ],
           'outputs': ['<@(libraries_extras_bin_file)'],
           'action': [
-            'python',
+            '@PYTHONBIN@',
             '../tools/js2c.py',
             '<(SHARED_INTERMEDIATE_DIR)/extras-libraries.cc',
             'EXTRAS',
@@ -2315,7 +2315,7 @@
             '<(SHARED_INTERMEDIATE_DIR)/experimental-extras-libraries.cc',
           ],
           'action': [
-            'python',
+            '@PYTHONBIN@',
             '../tools/js2c.py',
             '<(SHARED_INTERMEDIATE_DIR)/experimental-extras-libraries.cc',
             'EXPERIMENTAL_EXTRAS',
@@ -2330,7 +2330,7 @@
           ],
           'outputs': ['<@(libraries_experimental_extras_bin_file)'],
           'action': [
-            'python',
+            '@PYTHONBIN@',
             '../tools/js2c.py',
             '<(SHARED_INTERMEDIATE_DIR)/experimental-extras-libraries.cc',
             'EXPERIMENTAL_EXTRAS',
@@ -2361,7 +2361,7 @@
               '<(SHARED_INTERMEDIATE_DIR)/debug-support.cc',
             ],
             'action': [
-              'python',
+              '@PYTHONBIN@',
               '../tools/gen-postmortem-metadata.py',
               '<@(_outputs)',
               '<@(heapobject_files)'
