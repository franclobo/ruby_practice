=begin
You are given an array of non-overlapping intervals intervals where intervals[i] = [starti, endi] represent the start and the end of the ith interval and intervals is sorted in ascending order by starti. You are also given an interval newInterval = [start, end] that represents the start and end of another interval.

Insert newInterval into intervals such that intervals is still sorted in ascending order by starti and intervals still does not have any overlapping intervals (merge overlapping intervals if necessary).

Return intervals after the insertion.



Example 1:

Input: intervals = [[1,3],[6,9]], newInterval = [2,5]
Output: [[1,5],[6,9]]
Example 2:

Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
Output: [[1,2],[3,10],[12,16]]
Explanation: Because the new interval [4,8] overlaps with [3,5],[6,7],[8,10].
=end

# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  result = []
  i = 0

  # Agregar intervalos que no se superponen y están antes del nuevo intervalo
  while i < intervals.length && intervals[i][1] < new_interval[0]
    result << intervals[i]
    i += 1
  end

  # Fusionar intervalos que se superponen con el nuevo intervalo
  while i < intervals.length && intervals[i][0] <= new_interval[1]
    new_interval[0] = [intervals[i][0], new_interval[0]].min
    new_interval[1] = [intervals[i][1], new_interval[1]].max
    i += 1
  end

  result << new_interval

  # Agregar intervalos restantes
  while i < intervals.length
    result << intervals[i]
    i += 1
  end

  result
end


=begin
Aquí hay una explicación línea por línea del código:

result = []:

i = 0:

while i < intervals.length && intervals[i][1] < new_interval[0]: Este bucle recorre
  los intervalos en la lista hasta que encuentra un intervalo cuyo extremo derecho
  es menor que el extremo izquierdo del nuevo intervalo. Agrega estos intervalos a
  result porque no se superponen con el nuevo intervalo.

while i < intervals.length && intervals[i][0] <= new_interval[1]: Este bucle recorre
  los intervalos que pueden tener superposición con el nuevo intervalo. Ajusta los
  extremos del nuevo intervalo según sea necesario para abarcar los intervalos
  superpuestos.

new_interval[0] = [intervals[i][0], new_interval[0]].min: Actualiza el extremo
izquierdo del nuevo intervalo al mínimo entre su extremo izquierdo actual y el
extremo izquierdo del intervalo actual.

new_interval[1] = [intervals[i][1], new_interval[1]].max: Actualiza el extremo derecho
del nuevo intervalo al máximo entre su extremo derecho actual y el extremo derecho
del intervalo actual.

result << new_interval: Agrega el nuevo intervalo ajustado a la lista result.

while i < intervals.length: Agrega los intervalos restantes de la lista original que
   no se superponen con el nuevo intervalo.

result: Retorna la lista resultante que contiene los intervalos después de la
inserción del nuevo intervalo.
=end
