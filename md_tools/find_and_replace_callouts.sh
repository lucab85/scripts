#!/bin/bash

for file in `find src/content/ar/ -name "*.md"`
do
  sed -i "s/^ملحوظة: /Note: /g" $file
  sed -i "s/^الحذر: /Caution: /g" $file
  sed -i "s/^تحذير: /Warning: /g" $file
  sed -i "s/^نجاح: /Success: /g" $file
  sed -i "s/^النقطة الأساسية: /Key Point: /g" $file
  sed -i "s/^المصطلح الرئيسي: /Key Term: /g" $file
  sed -i "s/^موضوعي: /Objective: /g" $file
  sed -i "s/^التطبيق التجريبي: /Dogfood: /g" $file
done

for file in `find src/content/de/ -name "*.md"`
do
  sed -i "s/^Hinweis: /Note: /g" $file
  sed -i "s/^Vorsicht: /Caution: /g" $file
  sed -i "s/^Warnung: /Warning: /g" $file
  sed -i "s/^Erfolg: /Success: /g" $file
  sed -i "s/^Kernpunkt: /Key Point: /g" $file
  sed -i "s/^Schlüsselbegriff: /Key Term: /g" $file
  sed -i "s/^Objektiv: /Objective: /g" $file
  sed -i "s/^Hundefutter: /Dogfood: /g" $file
done

for file in `find src/content/es/ -name "*.md"`
do
  sed -i "s/^Nota: /Note: /g" $file
  sed -i "s/^Precaución: /Caution: /g" $file
  sed -i "s/^Advertencia: /Warning: /g" $file
  sed -i "s/^Éxito: /Success: /g" $file
  sed -i "s/^Punto clave: /Key Point: /g" $file
  sed -i "s/^Término clave: /Key Term: /g" $file
  sed -i "s/^Objetivo: /Objective: /g" $file
  sed -i "s/^Comida de perro: /Dogfood: /g" $file
done

for file in `find src/content/fr/ -name "*.md"`
do
  sed -i "s/^Remarque: /Note: /g" $file
  sed -i "s/^Mise en garde: /Caution: /g" $file
  sed -i "s/^Attention: /Warning: /g" $file
  sed -i "s/^Succès: /Success: /g" $file
  sed -i "s/^Point clé: /Key Point: /g" $file
  sed -i "s/^Terme clé: /Key Term: /g" $file
  sed -i "s/^Objectif: /Objective: /g" $file
  sed -i "s/^Nourriture pour chien: /Dogfood: /g" $file
done

for file in `find src/content/he/ -name "*.md"`
do
  sed -i "s/^הערה: /Note: /g" $file
  sed -i "s/^זְהִירוּת: /Caution: /g" $file
  sed -i "s/^אַזהָרָה: /Warning: /g" $file
  sed -i "s/^הַצלָחָה: /Success: /g" $file
  sed -i "s/^נקודת מפתח: /Key Point: /g" $file
  sed -i "s/^מונח מפתח: /Key Term: /g" $file
  sed -i "s/^מַטָרָה: /Objective: /g" $file
  sed -i "s/^אוכל לכלבים: /Dogfood: /g" $file
done

for file in `find src/content/hi/ -name "*.md"`
do
  sed -i "s/^ध्यान दें: /Note: /g" $file
  sed -i "s/^सावधान: /Caution: /g" $file
  sed -i "s/^चेतावनी: /Warning: /g" $file
  sed -i "s/^सफलता: /Success: /g" $file
  sed -i "s/^मुख्य बिंदु: /Key Point: /g" $file
  sed -i "s/^मुख्य शब्द: /Key Term: /g" $file
  sed -i "s/^लक्ष्य: /Objective: /g" $file
  sed -i "s/^कुत्ते का भोजन: /Dogfood: /g" $file
done

for file in `find src/content/id/ -name "*.md"`
do
  sed -i "s/^Catatan: /Note: /g" $file
  sed -i "s/^Peringatan: /Caution: /g" $file
  sed -i "s/^PERINGATAN: /Warning: /g" $file
  sed -i "s/^Keberhasilan: /Success: /g" $file
  sed -i "s/^Inti: /Key Point: /g" $file
  sed -i "s/^Istilah kunci: /Key Term: /g" $file
  sed -i "s/^Objektif: /Objective: /g" $file
  sed -i "s/^Makanan anjing: /Dogfood: /g" $file
done

for file in `find src/content/it/ -name "*.md"`
do
  sed -i "s/^Nota: /Note: /g" $file
  sed -i "s/^Attenzione: /Caution: /g" $file
  sed -i "s/^Avvertimento: /Warning: /g" $file
  sed -i "s/^Successo: /Success: /g" $file
  sed -i "s/^Punto chiave: /Key Point: /g" $file
  sed -i "s/^Termine chiave: /Key Term: /g" $file
  sed -i "s/^Obbiettivo: /Objective: /g" $file
  sed -i "s/^Cibo per cani: /Dogfood: /g" $file
done

for file in `find src/content/ja/ -name "*.md"`
do
  sed -i "s/^注意: /Note: /g" $file
  sed -i "s/^あぶない: /Caution: /g" $file
  sed -i "s/^警告: /Warning: /g" $file
  sed -i "s/^成功: /Success: /g" $file
  sed -i "s/^キーポイント: /Key Point: /g" $file
  sed -i "s/^主要用語: /Key Term: /g" $file
  sed -i "s/^目的: /Objective: /g" $file
  sed -i "s/^ドッグフード: /Dogfood: /g" $file
done

for file in `find src/content/ko/ -name "*.md"`
do
  sed -i "s/^노트: /Note: /g" $file
  sed -i "s/^주의: /Caution: /g" $file
  sed -i "s/^경고: /Warning: /g" $file
  sed -i "s/^성공: /Success: /g" $file
  sed -i "s/^핵심: /Key Point: /g" $file
  sed -i "s/^주요 용어: /Key Term: /g" $file
  sed -i "s/^목표: /Objective: /g" $file
  sed -i "s/^개 사료: /Dogfood: /g" $file
done

for file in `find src/content/nl/ -name "*.md"`
do
  sed -i "s/^Notitie: /Note: /g" $file
  sed -i "s/^Voorzichtigheid: /Caution: /g" $file
  sed -i "s/^Waarschuwing: /Warning: /g" $file
  sed -i "s/^Succes: /Success: /g" $file
  sed -i "s/^Kern: /Key Point: /g" $file
  sed -i "s/^Belangrijke term: /Key Term: /g" $file
  sed -i "s/^Doelstelling: /Objective: /g" $file
  sed -i "s/^Hondenvoer: /Dogfood: /g" $file
done

for file in `find src/content/pl/ -name "*.md"`
do
  sed -i "s/^Uwaga: /Note: /g" $file
  sed -i "s/^Uwaga: /Caution: /g" $file
  sed -i "s/^Ostrzeżenie: /Warning: /g" $file
  sed -i "s/^Powodzenie: /Success: /g" $file
  sed -i "s/^Kluczowy punkt: /Key Point: /g" $file
  sed -i "s/^Kluczowe pojęcie: /Key Term: /g" $file
  sed -i "s/^Cel: /Objective: /g" $file
  sed -i "s/^Psie jedzenie: /Dogfood: /g" $file
done

for file in `find src/content/pt-br/ -name "*.md"`
do
  sed -i "s/^Nota: /Note: /g" $file
  sed -i "s/^Cuidado: /Caution: /g" $file
  sed -i "s/^Atenção: /Warning: /g" $file
  sed -i "s/^Sucesso: /Success: /g" $file
  sed -i "s/^Ponto chave: /Key Point: /g" $file
  sed -i "s/^Termo-chave: /Key Term: /g" $file
  sed -i "s/^Objetivo: /Objective: /g" $file
  sed -i "s/^Comida de cão: /Dogfood: /g" $file
done

for file in `find src/content/ru/ -name "*.md"`
do
  sed -i "s/^Заметка: /Note: /g" $file
  sed -i "s/^предосторожность: /Caution: /g" $file
  sed -i "s/^Предупреждение: /Warning: /g" $file
  sed -i "s/^успех: /Success: /g" $file
  sed -i "s/^Ключевой момент: /Key Point: /g" $file
  sed -i "s/^Ключевой термин: /Key Term: /g" $file
  sed -i "s/^Задача: /Objective: /g" $file
  sed -i "s/^Собачья еда: /Dogfood: /g" $file
done

for file in `find src/content/tr/ -name "*.md"`
do
  sed -i "s/^Not: /Note: /g" $file
  sed -i "s/^Dikkat: /Caution: /g" $file
  sed -i "s/^Uyarı: /Warning: /g" $file
  sed -i "s/^Başarı: /Success: /g" $file
  sed -i "s/^Kilit nokta: /Key Point: /g" $file
  sed -i "s/^Anahtar Teslim: /Key Term: /g" $file
  sed -i "s/^Amaç: /Objective: /g" $file
  sed -i "s/^Köpek maması: /Dogfood: /g" $file
done

for file in `find src/content/zh-cn/ -name "*.md"`
do
  sed -i "s/^注意: /Note: /g" $file
  sed -i "s/^警告: /Caution: /g" $file
  sed -i "s/^警告: /Warning: /g" $file
  sed -i "s/^成功: /Success: /g" $file
  sed -i "s/^关键: /Key Point: /g" $file
  sed -i "s/^关键术语: /Key Term: /g" $file
  sed -i "s/^目的: /Objective: /g" $file
  sed -i "s/^狗粮: /Dogfood: /g" $file
done

for file in `find src/content/zh-tw/ -name "*.md"`
do
  sed -i "s/^注意: /Note: /g" $file
  sed -i "s/^警告: /Caution: /g" $file
  sed -i "s/^警告: /Warning: /g" $file
  sed -i "s/^成功: /Success: /g" $file
  sed -i "s/^關鍵: /Key Point: /g" $file
  sed -i "s/^關鍵術語: /Key Term: /g" $file
  sed -i "s/^目的: /Objective: /g" $file
  sed -i "s/^狗糧: /Dogfood: /g" $file
done
