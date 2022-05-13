// Copyright 2022 EuclidWebGLDemo contributors.
// SPDX-License-Identifier: BSD-3-Clause

import Euclid
import WebAPIKit

extension Mesh {
  var verticesBuffer: BufferSource {
    var result = ContiguousArray<Float32>()
    result.reserveCapacity(polygons.count * 3 * 3)

    for polygon in polygons {
      for vertex in polygon.vertices {
        result.append(Float32(vertex.position.x))
        result.append(Float32(vertex.position.y))
        result.append(Float32(vertex.position.z))
      }
    }

    return BufferSource.arrayBuffer(Float32Array(result).buffer)
  }
}
