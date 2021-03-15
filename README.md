# Nordic Word order Database (NWD)
*March 2021, Maud Westendorp*

This repository is an archive for files related to the [Nordic Word Order Database](https://tekstlab.uio.no/nwd). The archive includes test material, experiment scripts, and analysis scripts and guidelines. Part of this archive can also be found [here](https:github.com/BjornLundquist). That version is not kept up to date anymore.

## About the Nordic Word order Database
### In a nutshell
The Nordic Word order Database (NWD) contains over 70,000+ elicited sentences from almost 400 speakers of the five North Germanic languages targetting 10+ syntactic phenomena. The NWD is a collaboration between researchers from the University of Oslo and UiT The Arctic University of Norway. Two main experiments were run to collect data on syntactic variation in the five North Germanic languages Icelandic, Faroese, Norwegian, Danish and Swedish. The first experiment focusses on argument placement, the second experiment on verb placement. The experimental paradigms were developed by Ida Larsson (exp. 1), Björn Lundquist (exp. 1 and 2) and Maud Westendorp (exp. 2). Several  researchers and research assistants helped with the data collection and analysis. The process of building the Nordic Word order Database (NWD) and the data collection for this project is detailed in [Lundquist et al. 2019](https://journals.uio.no/NALS/article/view/7529).

### Funding
The Nordic Word order Database was funded by an infrastructure grant from University of Oslo (project leader: Ida Larsson) and the RCN project Variation and Change in the Scandinavian Verb Phrase(project number: 250755, PI: Ida Larsson). The infrastructure grant covered costs related to the technical work related to the database and annotation of the collected material. The RCN grant covered expenses associated with field work and project development. Additional funding was provided by the LAVA Lab at UiT The Arctic University of Norway for data collection (Tromsø) and data analysis. Westendorp’s contribution was funded by her PhD project at UiT.  

### Publications related to this project:
+ Björn Lundquist. 2020. [Argument placement in Faroese](https://doi.org/10.5617/nals.8526). *Nordic Atlas of Language Structures (NALS) Journal* 5(1): 5–27.
+ Björn Lundquist, Ida Larsson, Maud Westendorp, Eirik Tengesdal & Anders Nøklestad. 2019. [Nordic Word order Database: motivations, methods, material and infrastructure](https://journals.uio.no/NALS/article/view/7529). *Nordic Atlas of Language Structures (NALS) Journal* 4(1): 1–33.
+ Björn Lundquist, Maud Westendorp & Bror-Magnus S. Strand. 2020. [Code-switching alone cannot explain intraspeaker syntactic variability: Evidence from a spoken elicitation experiment](https://doi.org/10.1017/S0332586520000190). *Nordic Journal of Linguistics* 43(3): 249–287.
+ Maud Westendorp. 2020. [Verb placement in embedded sentences in Faroese](https://doi.org/10.5617/nals.8525). *Nordic Atlas of Language Structures (NALS) Journal* 5(1): 28-42.
+ *in press*. Maud Westendorp} & Björn Lundquist. Tverrspråklig innflytelse fra L1 i tilegnelsen av argumentplassering i L2 norsk og svensk [Crosslinguistic influence from L1 in the acquisition of argument placement in L2 Norwegian and Swedish]. *Norsk Lingvistisk Tidsskrift*.

## Contents of this repository
### Analysis
+ [Praat](https://www.fon.hum.uva.nl/praat/) (can be used if you do not have time stamps from OpenSesame)
  + guide on how to use Praat to help (roughly) segment audio (.pdf)
  + Praat script to recognise utterances in audio files (.praat)
+ ELAN
  + guide on how to use OS timestamps in ELAN (.pdf)
  + script to transform OpenSesame logfiles to ELAN files for automatic segmentation of audio ("OStoELAN")
  + ELAN templates to guide annotation of audio (.etf)
+ R scripts for gathering result files into single database

### Content organised per location
+ [Denmark](https://github.com/maudwestendorp/NWD/tree/mainbranch/Denmark)
+ [Faroe Islands](https://github.com/maudwestendorp/NWD/tree/mainbranch/FaroeIslands)
+ [Iceland](https://github.com/maudwestendorp/NWD/tree/mainbranch/Iceland)
+ [Norway](https://github.com/maudwestendorp/NWD/tree/mainbranch/Norway)
  + Tromsø
    + Elicitation with written (Bokmål) Norwegian
    + Elicitation with spoken dialect
  + Oslo
+ [Sweden](https://github.com/maudwestendorp/NWD/tree/master/Sweden)

#### Folders with experimental materials (experiment 1 and 2)
+ OpenSesame experimental file (OBS! Not all experiments have automatic logging of start and end times of experimental items)
+ template (txt) for experimental material ("MatTemp")
+ template (txt) for expected responses ("ItemMatch")

### Forced Alignment (to phonemes)
*under development*
In collaboration with [Nate Young](https://www.nateyoung.se), who created Forced Alignment for Swedish (SweFA) and Norwegian (NoFA) builing on the [Montreal Forced Aligner](http://montrealcorpustools.github.io/Montreal-Forced-Aligner/), we are working on forced alignment of the NWD data. Forced alignment software (semi)automatically locates the boundaries between the sounds corresponding to the phones that make up a fragment of speech. Its input is a sound file and the corresponding orthographic transcription. The output is a segmented file that is readable in Praat.
+ R script to create TextGrids from database
