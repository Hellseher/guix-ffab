#+created: <2022-05-29 Sun 12:53:28 BST>
#+modified: <2022-11-19 Sat 17:08:58 GMT>
#+file: TODO
#+options: toc:nil

#+BEGIN_SRC sh :results value md :results output replace :exports results
{
    echo "Authors in progress with priorities:"
    grep "TODO.*:author:" ./*.org  |
        sed -e 's/^.\///g' -e 's/:.*TODO//g' |
        sort -k4 -r |
        column -t |
        nl;
    echo;
    echo "Projects in progress with priorities:"
    grep " TODO" ./*.org |
        grep -v ":author:"  |
        sed -e 's/^.\///g' -e 's/:.*TODO//g' |
        sort -k4 -r |
        column -t |
        nl;
    echo;
    echo "Completed authors and projects:"
    grep "DONE" ./*.org |
        sed -e 's/^.\///g' -e 's/:.*DONE//g' |
        sort -k4 |
        column -t |
        nl;
}
#+end_src

#+RESULTS:
#+begin_example
Authors in progress with priorities:
     1	python.org             brandon-rhodes          [0/1][0%]    :author:p5:
     2	lisp.org               sjl                     [0/1][0%]    :author:p5:
     3	lisp.org               Shinmera/Shirakumo      [3/11][27%]  :author:p5:
     4	lisp.org               kmx-io                  [1/2][50%]   :author:p5:
     5	astronomy.org          INDI-Library            [1/3][33%]   :author:p5:
     6	astronomy.org          GreatAttractor          [2/2][100%]  :author:p5:
     7	astronomy.org          AstrOmatic-software     [8/10][80%]  :author:p5:
     8	astronomy.org          ap-i                    [1/5][20%]   :author:p5:
     9	astronomy.org          OpenPHDGuiding          [0/1][0%]    :author:p4:
    10	version-control.org    jesseduffield           [0/1][0%]    :author:p3:
    11	lisp.org               s-expressionists        [0/1][0%]    :author:p3:
    12	lisp.org               borodust                [0/2][0%]    :author:p3:
    13	python.org             webrecorder             [0/1][0%]    :author:p2:
    14	python.org             SunPy                   [0/0][0%]    :author:p2:
    15	lisp.org               cbaggers                [1/3][33%]   :author:p2:
    16	astronomy.org          SunPy                   [0/3][0%]    :author:p2:
    17	astronomy.org          MAVENSDC                [1/1][100%]  :author:p2:
    18	astronomy.org          SAOImageDS9             [0/1][0%]    :author:p1:
    19	astronomy.org          ericmandel              [0/1][0%]    :author:p1:
    20	astronomy.org          dokester                [0/1][0%]    :author:p1:
    21	astronomy.org          casacore                [1/2][50%]   :author:p1:
    22	astronomy.org          asdf-format             [5/9][55%]   :author:p1:
    23	python.org             WoLpH                   [0/1][0%]    :author:
    24	python.org             StdCarrot               [0/1][0%]    :author:
    25	python.org             pyga                    [0/1][0%]    :author:
    26	python.org             Py3AMF                  [8/12][66%]  :author:
    27	python.org             opencv                  [0/1][0%]    :author:
    28	python.org             niltonvolpato           [0/1][0%]    :author:
    29	python.org             Martiusweb              [0/1][0%]    :author:
    30	python.org             internetarchive         [0/1][0%]    :author:
    31	python.org             Astropy                 [0/1][0%]    :author:
    32	maths.org              mtr                     [0/1][0%]    :author:
    33	maths.org              danieljprice            [1/1][100%]  :author:
    34	lisp.org               vindarel                [/][%]       :author:
    35	lisp.org               noloop                  [0/1][0%]    :author:
    36	lisp.org               lokedhs                 [1/2][50%]   :author:
    37	lisp.org               lispgames               [0/0][0%]    :author:
    38	lisp.org               inconvergent            [0/2][0%]    :author:
    39	lisp.org               hu.dwim                 [1/1][100%]  :author:
    40	lisp.org               HazenBabcock            [0/1][0%]    :author:
    41	lisp.org               foretspaisibles         [1/1][100%]  :author:
    42	lisp.org               eudoxia0                [0/1][0%]    :author:
    43	lisp.org               cl-adams                [0/1][0%]    :author:
    44	lisp.org               bufferswap              [0/1][0%]    :author:
    45	lisp.org               3b                      [3/4][75%]   :author:
    46	high-availability.org  Kronosnet               [1/1][100%]  :author:
    47	high-availability.org  corosync                [1/2][50%]   :author:
    48	high-availability.org  ClusterLabs             [1/1][100%]  :author:
    49	golang.org             valyala                 [1/1][100%]  :author:
    50	golang.org             github.com/johnkerl     [0/1][0%]    :author:
    51	golang.org             github.com/hashicorp    [1/3][33%]   :author:
    52	golang.org             github.com/gin-gonic    [/][%]       :author:
    53	golang.org             github.com/caddyserver  [0/1][0%]    :author:
    54	golang.org             FiloSottile             [0/1][0%]    :author:
    55	astronomy.org          XEphem                  [0/4][0%]    :author:
    56	astronomy.org          Starlink                [0/1][0%]    :author:
    57	astronomy.org          spacetelescope          [1/20][5%]   :author:
    58	astronomy.org          schirmermischa          [0/1][0%]    :author:
    59	astronomy.org          rwesson                 [0/1][0%]    :author:
    60	astronomy.org          revoltek                [0/1][0%]    :author:
    61	astronomy.org          QuatroPe                [1/2][50%]   :author:
    62	astronomy.org          PaulMcMillan-Astro      [0/1][0%]    :author:
    63	astronomy.org          neuromorphicsystems     [0/1][0%]    :author:
    64	astronomy.org          NASA                    [0/4][0%]    :author:
    65	astronomy.org          linguider               [/][%]       :author:
    66	astronomy.org          Libsharp                [0/1][0%]    :author:
    67	astronomy.org          kepler-project          [/][%]       :author:
    68	astronomy.org          jobovy                  [0/1][0%]    :author:
    69	astronomy.org          indigo-astronomy        [0/1][0%]    :author:
    70	astronomy.org          IIPImage                [/][%]       :author:
    71	astronomy.org          IAUSOFA                 [0/1][0%]    :author:
    72	astronomy.org          free-astro              [1/2][50%]   :author:
    73	astronomy.org          ESO                     [1/3][33%]   :author:
    74	astronomy.org          dstndstn                [0/1][0%]    :author:
    75	astronomy.org          danieljprice            [1/3][33%]   :author:
    76	astronomy.org          cpinte                  [0/1][0%]    :author:
    77	astronomy.org          C-Munipack-library      [0/0][0%]    :author:
    78	astronomy.org          ATNF                    [0/1][0%]    :author:
    79	astronomy.org          Astropy                 [1/4][25%]   :author:
    80	astronomy.org          aroffringa              [2/2][100%]  :author:
    81	astronomy.org          amusecode               [/][%]       :author:

Projects in progress with priorities:
     1	maths.org              nelib                [/][%]       :p5:
     2	lisp.org               zorm                 [0/4][0%]    :p5:
     3	lisp.org               cl-adams             [1/4][25%]   :p5:
     4	golang.org             age                  [/][%]       :p5:
     5	astronomy.org          sofa-c               [0/4][0%]    :p5:
     6	astronomy.org          ois                  [/][%]       :p5:
     7	astronomy.org          INDIGO               [0/4]        :p5:
     8	astronomy.org          AIPS                 [/][%]       :p5:
     9	pascal.org             voc                  [/][%]       :p3:
    10	node-xyz.org           jquery               [/][%]       :p3:
    11	node-xyz.org           bootstrap-toggle     [/][%]       :p3:
    12	node-xyz.org           bootstrap            [/][%]       :p3:
    13	lisp.org               rib                  [0/4][0%]    :p3:
    14	lisp.org               cl-rabbit            [0/4][0%]    :p3:
    15	golang.org             bykof/go-plantuml    [/][%]       :p3:
    16	emacs-xyz.org          org-roam-ui          [/][%]       :p3:
    17	astronomy.org          HEALPix              [1/4][25%]   :p3:
    18	python.org             mpl-animators        [1/4][25%]   :p2:
    19	maths.org              plplot               [0/0][0%]    :p2:
    20	lisp.org               dirt                 [0/4][0%]    :p2:
    21	lisp.org               cl-soil              [0/4][0%]    :p2:
    22	astronomy.org          uvsph                [/][%]       :p2:
    23	astronomy.org          sunpy                [0/4][0%]    :p2:
    24	astronomy.org          SiriLic              [0/4][0%]    :p2:
    25	astronomy.org          phantom              [0/4][0%]    :p2:
    26	astronomy.org          mpl-animations       [2/4][50%]   :p2:
    27	astronomy.org          mcfost               [/][%]       :p2:
    28	astronomy.org          drms                 [2/4][50%]   :p2:
    29	version-control.org    lazygit              [0/4][0%]    :p1:
    30	python.org             opencv-python        [0/4][0%]    :p1:
    31	lisp.org               virality             [0/4][0%]    :p1:
    32	lisp.org               feedback             [/][%]       :p1:
    33	lisp.org               classimp             [/][%]       :p1:
    34	golang.org             miller               [1/5][20%]   :p1:
    35	golang.org             go/tools/gopls       [/][%]       :p1:
    36	golang.org             caddy                [0/4][0%]    :p1:
    37	astronomy.org          Torus                [1/4][25%]   :p1:
    38	astronomy.org          pal                  [0/4][0%]    :p1:
    39	astronomy.org          jwst                 [2/4][50%]   :p1:
    40	astronomy.org          galpy                [1/4][25%]   :p1:
    41	astronomy.org          funtools             [2/4][50%]   :p1:
    42	astronomy.org          astrometry           [/][%]       :p1:
    43	astronomy.org          asdf-standard        [2/4][50%]   :p1:
    44	lisp.org               EuAndreh             [0/1][0%]    :autho:
    45	python.org             surt                 [/][%]
    46	python.org             sphinx-automodapi    [2/4][50%]
    47	python.org             pywb                 [1/4][25%]
    48	python.org             progressbar          [1/3][33%]
    49	python.org             portalocker          [2/4][50%]
    50	python.org             parsley              [1/4][25%]
    51	python.org             asynctest            [1/3][33%]
    52	python.org             assay                [2/3][66%]
    53	maths.org              ducc
    54	lisp.org               weird                [0/4][0%]
    55	lisp.org               weir                 [3/4][75%]
    56	lisp.org               trial                [4/5][80%]
    57	lisp.org               repo                 [0/4][0%]
    58	lisp.org               qt-libs              [/][%]
    59	lisp.org               lucerne              [1/4][25%]
    60	lisp.org               kandria              [0/4][0%]
    61	lisp.org               harmony              [/][%]
    62	lisp.org               file-notify          [/][%]
    63	lisp.org               ctype                [0/4][0%]
    64	lisp.org               cl-steamworks        [/][%]
    65	lisp.org               cl-slug              [/][%]
    66	lisp.org               cl-plplot            [0/4][0%]
    67	lisp.org               cl-mixed             [1/4][25%]
    68	lisp.org               cl-bodge             [0/4][0%]
    69	lisp.org               claw                 [0/4][0%]
    70	lisp.org               cacau                [0/4][0%]
    71	lisp.org               adopt                [1/4][25%]
    72	high-availability.org  corosync-qdevice     [1/4][25%]
    73	golang.org             hashicorp/terraform  [0/4][0%]
    74	golang.org             hashicorp/nomad      [0/0][100%]
    75	golang.org             gin-gonic/gin        [1/4][25%]
    76	docker.org             dive                 [/][%]
    77	astronomy.org          Xspec                [/]
    78	astronomy.org          wiimatch             [1/4][25%]
    79	astronomy.org          tweakwcs             [2/4][50%]
    80	astronomy.org          THELI                [0/0][0%]
    81	astronomy.org          synphot              [2/4][50%]
    82	astronomy.org          stsynphot            [2/4][50%]
    83	astronomy.org          stsci.stimage        [/][%]
    84	astronomy.org          stsci.imagestats     [2/4][50%]
    85	astronomy.org          stsci.image          [2/4][50%]
    86	astronomy.org          stpipe               [2/4][50%]
    87	astronomy.org          stdatamodels         [2/4][50%]
    88	astronomy.org          stcal                [/][%]
    89	astronomy.org          spherical-geometry   [2/4][50%]
    90	astronomy.org          specutils            [0/0][100%]
    91	astronomy.org          skychart             [0/4][0%]
    92	astronomy.org          skycat               [0/4][0%]
    93	astronomy.org          scamp                [0/4][0%]
    94	astronomy.org          SAOImageDS9          [0/4][0%]
    95	astronomy.org          rad                  [2/4][50%]
    96	astronomy.org          python-casacore      [1/4][25%]
    97	astronomy.org          pysynphot            [2/4][2/4]
    98	astronomy.org          psfex                [1/4][25%]
    99	astronomy.org          poppy                [2/4][50%]
   100	astronomy.org          phd2                 [0/4][%]
   101	astronomy.org          losoto               [1/4][25%]
   102	astronomy.org          libsharp             [3/3][100%]
   103	astronomy.org          inistarter           [/][%]
   104	astronomy.org          indi-service-type    [/][%]
   105	astronomy.org          indi-3rdparty        [0/4][0%]
   106	astronomy.org          HEAsoft              [0/4][0%]
   107	astronomy.org          eqmodgui             [/][%]
   108	astronomy.org          eclipse              [0/0][0%]
   109	astronomy.org          drizzle              [2/4][50%]
   110	astronomy.org          datamodels           [2/4][50%]
   111	astronomy.org          crds                 [1/4][25%]
   112	astronomy.org          ci-watson            [1/4][25%]
   113	astronomy.org          CDF                  [/][%]
   114	astronomy.org          ccdciel              [/][%]
   115	astronomy.org          BayesicFitting       [2/4][50%]
   116	astronomy.org          astroquery           [/][%]
   117	astronomy.org          astroplan            [1/4][25%]
   118	astronomy.org          astrometry           [/][%]
   119	astronomy.org          asdf-unit-schemas    [2/4][50%]
   120	astronomy.org          asdf-time-schemas    [2/4][50%]
   121	astronomy.org          asdf-fits-schemas    [2/4][50%]
   122	astronomy.org          ALFA                 [3/4][75%]

Completed authors and projects:
     1	astronomy.org          AOCommon                  [3/3][100%]
     2	astronomy.org          AOFlagger                 [4/4][100%]
     3	astronomy.org          asdf                      [1/1][100%]
     4	astronomy.org          asdf-coordinates-schemas  [1/1][100%]
     5	astronomy.org          asdf-table-schemas        [1/1][100%]
     6	astronomy.org          asdf-transform-schemas    [1/1][100%]
     7	astronomy.org          asdf-wcs-schemas          [1/1][100%]
     8	astronomy.org          astroalign                [4/4][100%]
     9	astronomy.org          astropy                   [4/4][100%]
    10	astronomy.org          casacore                  [4/4][100%]
    11	astronomy.org          eye                       [3/3][100%]
    12	astronomy.org          gwcs                      [4/4][100%]
    13	astronomy.org          imppg                     [4/4][100%]
    14	astronomy.org          indi                      [4/4][100%]
    15	astronomy.org          libpasastro               [3/3][100%]
    16	astronomy.org          missfits                  [3/3][100%]
    17	astronomy.org          pynbody                   [4/4][/%]
    18	astronomy.org          qfits                     [3/3][100%]
    19	astronomy.org          sextractor                [4/4][100%]
    20	astronomy.org          siril                     [4/4][100%]
    21	astronomy.org          skymaker                  [4/4][100%]
    22	astronomy.org          SPLASH                    [4/4][100%]
    23	astronomy.org          stackistry                [4/4][100%]
    24	astronomy.org          stiff                     [3/3][100%]
    25	astronomy.org          stuff                     [3/3][100%]
    26	astronomy.org          swarp                     [3/3][100%]
    27	astronomy.org          weightwatcher             [3/3][100%]
    28	cran.org               opencpu                   [4/4][100%]
    29	databases.org          pgloader
    30	golang.org             hcl-v2                    [4/4][100%]
    31	golang.org             valyala/fasthttp          [3/4][75%]
    32	high-availability.org  corosync                  [4/4][100%]
    33	high-availability.org  kronosnet                 [4/4][100%]
    34	high-availability.org  pacemaker                 [4/4][100%]
    35	lisp.org               3b-bmfont                 [4/4][100%]
    36	lisp.org               alloy                     [4/4][100%]
    37	lisp.org               asdf-system-connections   [3/3][100%]
    38	lisp.org               bknr-datastore            [4/4][100%]
    39	lisp.org               cepl                      [4/4][100%]
    40	lisp.org               chirp                     [4/4][100%]
    41	lisp.org               chronicity                [4/4][100%]
    42	lisp.org               cl-cpus                   [/][%]
    43	lisp.org               cl-debug                  [3/3][100%]
    44	lisp.org               cl-diskspace              [3/3][100%]
    45	lisp.org               cl-glfw3                  [4/4][100%]
    46	lisp.org               cl-liballegro             [4/4][100%]
    47	lisp.org               cl-mount-info             [4/4][100%]
    48	lisp.org               cl-nst                    [4/4][100%]
    49	lisp.org               cl-opengl                 [4/4][100%]
    50	lisp.org               cl-posix-mqueue           [4/4][100%]
    51	lisp.org               cl-re                     [4/4][100%]
    52	lisp.org               coalton                   [4/4][100%]
    53	lisp.org               Djula                     [4/4][100%]
    54	lisp.org               glop                      [4/4][100%]
    55	lisp.org               glsl-packing              [4/4][100%]
    56	lisp.org               hu.dwim.graphviz          [4/4][100%]
    57	lisp.org               kaputt                    [4/4][100%]
    58	lisp.org               radiance                  [4/4][100%]
    59	maths.org              giza                      [4/4][100%]
    60	python.org             aioftp                    [4/4][100%]
    61	python.org             glymur                    [4/4][100%]
    62	python.org             h5netcdf                  [4/4][100%]
    63	python.org             parfive                   [4/4][100%]
    64	python.org             posix-ipc                 [/][%]
    65	python.org             pytest-socket             [4/4][100%]
    66	python.org             siosocks                  [4/4][100%]
    67	astronomy.org          pynbody                   [1/1][100%]  :author:
    68	lisp.org               AlexCharlton              [1/1][100%]  :author:
    69	lisp.org               cage                      [1/2][50%]   :author:
    70	lisp.org               chaitanyagupta            [1/2][50%]   :author:
    71	lisp.org               hanshuebner               [1/1][100%]  :author:
    72	lisp.org               jphmrst                   [1/1][100%]  :author:
    73	lisp.org               massung                   [1/1][100%]  :author:
    74	lisp.org               mmontone                  [1/1][100%]  :author:
    75	lisp.org               muyinliu                  [2/2][100%]  :author:
    76	lisp.org               resttime                  [1/1][100%]  :author:
    77	lisp.org               stylewarning              [1/1][100%]  :author:
    78	lisp.org               xFA25E                    [1/1][100%]  :author:
    79	python.org             aio-libs                  [1/1][100%]  :author:
    80	python.org             Cadair                    [1/1][100%]  :author:
    81	python.org             h5netcdf                  [1/1][100%]  :author:
    82	python.org             miketheman                [1/1][100%]  :author:
    83	python.org             osvenskan                 [1/1][100%]  :author:
    84	python.org             pohmelie                  [1/1][100%]  :author:
    85	python.org             quintusdias               [1/1][100%]  :author:
    86	lisp.org               gwkkwg                    [4/4][100%]  :author:p3:
    87	lisp.org               cl-gss                    [4/4][100%]  :p1:
    88	astronomy.org          cdflib                    [4/4][100%]  :p2:
    89	lisp.org               cl-graph                  [4/4][100%]  :p4:
    90	lisp.org               cl-mathstats              [4/4][100%]  :p4:
    91	lisp.org               metacopy                  [4/4][100%]  :p4:
#+end_example
