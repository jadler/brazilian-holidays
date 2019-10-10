;;; brazilian-holidays.el --- Brazilian holidays                   -*- lexical-binding: t; -*-

;; Copyright (C) 2019 Jaguaraquem A. Reinaldo

;; Author: Jaguaraquem A. Reinaldo <jaguar.adler@gmail.com>
;; Version: 1.0.1
;; URL: https://github.com/jadler/brazilian-holidays
;; Keywords: calendar holidays
;; Package-Requires: ((emacs "26"))

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Provides Brazilian holidays as well as for each State
;; To enable holidays for the desired State, just set a non-nil value for the
;; State variable.
;;
;; E.g.: (setq brazilian-rj-holidays t)
;;
;; Or with `use-package`:
;;
;; (use-package brazilian-holidays
;;  :custom
;;  (brazilian-rj-holidays t)
;;  (brazilian-sp-holidays t)

;;; Code:

(eval-when-compile
  (require 'calendar)
  (require 'holidays))

(defvar brazilian-general-holidays nil
  "National brazilian holidays.")
(setq brazilian-general-holidays
      '((holiday-fixed       1    1 "Confraternização Universal")
        (holiday-fixed       4   21 "Tiradentes")
        (holiday-fixed       5    1 "Dia do Trabalho")
        (holiday-fixed       9    7 "Dia da Pátria")
        (holiday-fixed      11    2 "Finados")
        (holiday-fixed      11   15 "Proclamação da República")))

(defvar brazilian-christian-holidays nil
  "Christian brazilian holidays.")
(setq brazilian-christian-holidays
      '((holiday-easter-etc      -2 "Paixão de Cristo")
        (holiday-easter-etc       0 "Páscoa")
        (holiday-fixed      10   12 "Nossa Senhora Aparecida")
        (holiday-fixed      12   25 "Natal")))

(defvar brazilian-other-holidays nil
  "Other holidays and commemorative brazilian dates.")
(setq brazilian-other-holidays
      '((holiday-fixed       1    6 "Dia de Reis")
        (holiday-fixed       1    9 "Dia do Fico")
        (holiday-easter-etc     -46 "Início da Quaresma")
        (holiday-fixed       3    8 "Dia Internacional da Mulher")
        (holiday-fixed       4    1 "Dia da Mentira")
        (holiday-fixed       4   19 "Dia do Índio")
        (holiday-easter-etc      -1 "Sábado de Aleluia")
        (holiday-fixed       4   22 "Descobrimento do Brasil")
        (holiday-float       5 0  2 "Dia das Mães")
        (holiday-easter-etc      49 "Pentecostes")
        (holiday-easter-etc      56 "Santíssima Trindade")
        (holiday-easter-etc      60 "Corpus Christi")
        (holiday-fixed       6   12 "Dia dos Namorados")
        (holiday-fixed       6   13 "Dia de Santo Antônio")
        (holiday-fixed       6   24 "Dia de São João")
        (holiday-fixed       6   29 "Dia de São Pedro")
        (holiday-float       7 0  2 "Dia dos Pais")
        (holiday-fixed       8   25 "Dia do Soldado")
        (holiday-fixed      10   12 "Dia das Crianças")
        (holiday-fixed      11   19 "Dia da Bandeira")))

(defvar brazilian-rj-holidays nil
  "Regional holidays and commemorative dates for Rio de Janeiro State.")
(if brazilian-rj-holidays
    (setq holiday-local-holidays
          (append
           holiday-local-holidays
           '((holiday-fixed       1   20 "São Sebastião")
             (holiday-easter-etc     -47 "Carnaval")
             (holiday-easter-etc     -46 "Quarta-feira de cinzas")
             (holiday-fixed       4   23 "São Jorge")
             (holiday-float      10 0  3 "Dia do Comércio")
             (holiday-fixed      11   20 "Consciência Negra")))))

(if brazilian-sp-holidays
    (setq holiday-local-holidays
          (append
           holiday-local-holidays
           '((holiday-fixed        7   9 "Dia da Revolução Constitucionalista")))))

(defvar brazilian-remove-holidays t
  "Remove holidays from other countries.")
(when brazilian-remove-holidays
  (setq holiday-bahai-holidays nil)
  (setq holiday-hebrew-holidays nil)
  (setq holiday-islamic-holidays nil)
  (setq holiday-oriental-holidays nil)
  (setq holiday-solar-holidays nil))

(setq holiday-general-holidays brazilian-general-holidays)
(setq holiday-christian-holidays brazilian-christian-holidays)
(setq holiday-other-holidays brazilian-other-holidays)

(provide 'brazilian-holidays)
;;; brazilian-holidays.el ends here
